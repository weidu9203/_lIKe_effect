from inc_noesis import *

#registerNoesisTypes is called by Noesis to allow the script to register formats.
#Do not implement this function in script files unless you want them to be dedicated format modules!
def registerNoesisTypes():
	handle = noesis.register("PVRTC Image", ".pvr")
	noesis.setHandlerTypeCheck(handle, pvrCheckType)
	noesis.setHandlerLoadRGBA(handle, pvrLoadRGBA)
	return 1


class PVRTCImage:
	def __init__(self, reader):
		self.reader = reader

	def parseV2(self):
		self.reader.seek(4, NOESEEK_ABS)
		self.w = self.reader.readInt()
		self.h = self.reader.readInt()
		self.fmt = self.reader.readInt()
		self.flags = self.reader.readInt()
		self.dataSize = self.reader.readInt()
		self.bpp = self.reader.readInt()
		self.reader.seek(44, NOESEEK_ABS)
		if self.reader.readInt() != 0x21525650: #"PVR!"
			return 0
		if self.flags & 0x10000:
			self.flip = 1
		self.dataOfs = 52
		return 1

	def parseV3(self):
		if self.reader.getSize() < 68:
			return 0
		self.reader.seek(4, NOESEEK_ABS)
		self.asz = self.reader.readInt()
		self.fmt = self.reader.readInt()
		if self.fmt == 1:
			self.bpp = 2
		elif self.fmt == 3:
			self.bpp = 4
		else:
			return 0
		self.reader.seek(24, NOESEEK_ABS)
		self.w = self.reader.readInt()
		self.h = self.reader.readInt()
		self.reader.seek(48, NOESEEK_ABS)
		self.metaLen = self.reader.readInt()
		if self.metaLen > 4:
			if self.reader.readInt() == 0x3525650:
				self.flip = 1
		self.dataOfs = 52+self.metaLen
		return 1

	def parseImageInfo(self):
		if self.reader.getSize() < 52:
			return 0

		self.flip = 0
		self.ver = self.reader.readInt()
		if self.ver == 52:
			return self.parseV2()
		elif self.ver == 0x3525650:
			return self.parseV3()

		return 0

	def decode(self):
		self.reader.seek(self.dataOfs, NOESEEK_ABS)
		d = 4 if self.bpp == 2 else 2
		r = rapi.imageDecodePVRTC(self.reader.readBytes((self.w*self.h) // d), self.w, self.h, -self.bpp)
		if self.flip == 1:
			r = rapi.imageFlipRGBA32(r, self.w, self.h, 0, 1)
		return r


#noesis passes in data as a bytearray
def pvrCheckType(data):
	pvr = PVRTCImage(NoeBitStream(data))
	if pvr.parseImageInfo() != 1:
		return 0
	if pvr.bpp != 2 and pvr.bpp != 4:
		return 0 #not supported in this script
	return 1

#texList should be filled with NoeTexture objects, which will be read by Noesis
def pvrLoadRGBA(data, texList):
	pvr = PVRTCImage(NoeBitStream(data))
	if pvr.parseImageInfo() != 1:
		return 0

	texList.append(NoeTexture("pvrtex", pvr.w, pvr.h, pvr.decode(), noesis.NOESISTEX_RGBA32))
	return 1
