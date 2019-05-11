include $(THEOS)/makefiles/common.mk

ARCHS = armv7 arm64 arm64e

BUNDLE_NAME = CleanHomeScreenPrefs
CleanHomeScreenPrefs_FILES = CHSRootListController.m
CleanHomeScreenPrefs_INSTALL_PATH = /Library/PreferenceBundles
CleanHomeScreenPrefs_FRAMEWORKS = UIKit
CleanHomeScreenPrefs_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CleanHomeScreenPrefs.plist$(ECHO_END)
