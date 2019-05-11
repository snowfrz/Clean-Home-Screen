DEBUG = 0
PACKAGE_VERSION = 1.0.4

ARCHS = armv7 arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CleanHomeScreen
CleanHomeScreen_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += cleanhomescreenprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
