#line 1 "Tweak.xm"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBIconZoomAnimator; @class SBFLockScreenDateSubtitleDateView; @class SBDashBoardPageControl; @class SBIconView; @class SBDockView; @class NSObject; @class SBIconListPageControl; @class SBCoverSheetIconFlyInAnimator; @class UIStatusBarForegroundView; @class SBIconController; @class SBUICallToActionLabel; 
static BOOL _logos_method$_ungrouped$NSObject$isSettingOn$(_LOGOS_SELF_TYPE_NORMAL NSObject* _LOGOS_SELF_CONST, SEL, NSString *); static _Bool (*_logos_orig$_ungrouped$SBIconController$iconAllowsBadging$)(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static _Bool _logos_method$_ungrouped$SBIconController$iconAllowsBadging$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST, SEL, id); static void (*_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST, SEL, double); static void (*_logos_orig$_ungrouped$SBIconView$_applyIconLabelAlpha$)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBIconView$_applyIconLabelAlpha$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL, double); static double (*_logos_orig$_ungrouped$SBIconView$effectiveIconLabelAlpha)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static double _logos_method$_ungrouped$SBIconView$effectiveIconLabelAlpha(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$)(_LOGOS_SELF_TYPE_NORMAL SBIconZoomAnimator* _LOGOS_SELF_CONST, SEL, double); static void _logos_method$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$(_LOGOS_SELF_TYPE_NORMAL SBIconZoomAnimator* _LOGOS_SELF_CONST, SEL, double); static double (*_logos_orig$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$)(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetIconFlyInAnimator* _LOGOS_SELF_CONST, SEL, double); static double _logos_method$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetIconFlyInAnimator* _LOGOS_SELF_CONST, SEL, double); static id (*_logos_orig$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, _Bool, long long); static id _logos_method$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, _Bool, long long); static void (*_logos_orig$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$)(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, id, _Bool, long long); static void _logos_method$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST, SEL, id, _Bool, long long); static void (*_logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToWindow)(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST, SEL); static SBDashBoardPageControl* (*_logos_orig$_ungrouped$SBDashBoardPageControl$initWithFrame$)(_LOGOS_SELF_TYPE_INIT SBDashBoardPageControl*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static SBDashBoardPageControl* _logos_method$_ungrouped$SBDashBoardPageControl$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBDashBoardPageControl*, SEL, struct CGRect) _LOGOS_RETURN_RETAINED; static void (*_logos_orig$_ungrouped$SBUICallToActionLabel$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBUICallToActionLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews)(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateSubtitleDateView* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateSubtitleDateView* _LOGOS_SELF_CONST, SEL); 

#line 2 "Tweak.xm"

@interface NSObject (customObject)
- (BOOL)isSettingOn:(NSString *)keyStr;
@end




static BOOL _logos_method$_ungrouped$NSObject$isSettingOn$(_LOGOS_SELF_TYPE_NORMAL NSObject* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * keyStr) {
  const char *keyStrC = [keyStr cStringUsingEncoding:NSUTF8StringEncoding];
  CFPreferencesAppSynchronize(CFSTR("xyz.royalapps.cleanhomescreenprefs"));
  CFPropertyListRef value = CFPreferencesCopyAppValue(CFStringCreateWithCString(NULL, keyStrC, kCFStringEncodingUTF8), CFSTR("xyz.royalapps.cleanhomescreenprefs"));

  NSString *valueString = [NSString stringWithFormat:@"%@", value];
  NSString *noVal = @"0";

  if ([valueString isEqualToString:noVal])
  {
    return NO;
  }
  else
  {
    return YES;
  }
}






static _Bool _logos_method$_ungrouped$SBIconController$iconAllowsBadging$(_LOGOS_SELF_TYPE_NORMAL SBIconController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"notifbadges"];

  if (isSettingOn)
  {
    return 0;
  }
  else
  {
    return 1;
  }
}







static void _logos_method$_ungrouped$SBDockView$setBackgroundAlpha$(_LOGOS_SELF_TYPE_NORMAL SBDockView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"dockbg"];

  if (isSettingOn)
  {
    arg1 = 0;
  }
  else
  {
    arg1 = 1;
  }

  _logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$(self, _cmd, arg1);
}





#import "SBIconView.h"


static void _logos_method$_ungrouped$SBIconView$_applyIconLabelAlpha$(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iconlabels"];

  if (isSettingOn)
  {
    arg1 = 0;
  }
  else
  {
    arg1 = 1;
  }

  _logos_orig$_ungrouped$SBIconView$_applyIconLabelAlpha$(self, _cmd, arg1);
}


static double _logos_method$_ungrouped$SBIconView$effectiveIconLabelAlpha(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iconlabels"];

  if (isSettingOn)
  {
      return 0;
  }
  else
  {
      return 1;
  }

}


static void _logos_method$_ungrouped$SBIconView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBIconView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SBIconView$layoutSubviews(self, _cmd);

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iconlabels"];

  if (isSettingOn)
  {
      self.iconLabelAlpha = 0;
  }
  else
  {
      self.iconLabelAlpha = 1;
  }
}






static void _logos_method$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$(_LOGOS_SELF_TYPE_NORMAL SBIconZoomAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iconlabels"];

  if (isSettingOn)
  {
    arg1 = 1;
  }
  else
  {
    arg1 = 0;
  }

  _logos_orig$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$(self, _cmd, arg1);
}







static double _logos_method$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$(_LOGOS_SELF_TYPE_NORMAL SBCoverSheetIconFlyInAnimator* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, double arg1) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iconlabels"];

  if (isSettingOn)
  {
    arg1 = 1;
  }
  else
  {
    arg1 = 0;
  }

  return _logos_orig$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$(self, _cmd, arg1);
}





#import "SBIconListPageControl.h"


static id _logos_method$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1, long long arg2) {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbhspageindicator"];

  id returnValue;
  if (isSettingOn)
  {
    returnValue = _logos_orig$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$(self, _cmd, 0, arg2);
  }
  else
  {
    returnValue = _logos_orig$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$(self, _cmd, arg1, arg2);
  }
  return returnValue;

}


static void _logos_method$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$(_LOGOS_SELF_TYPE_NORMAL SBIconListPageControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, id arg1, _Bool arg2, long long arg3) {
  _logos_orig$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$(self, _cmd, arg1, arg2, arg3);

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbhspageindicator"];

  if (isSettingOn)
  {
    _logos_orig$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$(self, _cmd, 0, 0, 0);
    [self removeFromSuperview];
  }
  else
  {
    _logos_orig$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$(self, _cmd, arg1, arg2, arg3);
  }
}







static void _logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToWindow(_LOGOS_SELF_TYPE_NORMAL UIStatusBarForegroundView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    _logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToWindow(self, _cmd);

    NSObject *object = [[NSObject alloc] init];
    BOOL isSettingOn = [object isSettingOn:@"sbsb"];

    if (isSettingOn)
    {
      [self removeFromSuperview];
    }
}








static SBDashBoardPageControl* _logos_method$_ungrouped$SBDashBoardPageControl$initWithFrame$(_LOGOS_SELF_TYPE_INIT SBDashBoardPageControl* __unused self, SEL __unused _cmd, struct CGRect arg1) _LOGOS_RETURN_RETAINED {
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sblspageindicator"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
    return nil;
  }
  else
  {
    return _logos_orig$_ungrouped$SBDashBoardPageControl$initWithFrame$(self, _cmd, arg1);
  }
}





#import "SBUICallToActionLabel.h"


static void _logos_method$_ungrouped$SBUICallToActionLabel$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBUICallToActionLabel* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SBUICallToActionLabel$layoutSubviews(self, _cmd);

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"calltoaction"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
}







static void _logos_method$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews(_LOGOS_SELF_TYPE_NORMAL SBFLockScreenDateSubtitleDateView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
  _logos_orig$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews(self, _cmd);

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"lsdate"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSObject = objc_getClass("NSObject"); { char _typeEncoding[1024]; unsigned int i = 0; memcpy(_typeEncoding + i, @encode(BOOL), strlen(@encode(BOOL))); i += strlen(@encode(BOOL)); _typeEncoding[i] = '@'; i += 1; _typeEncoding[i] = ':'; i += 1; memcpy(_typeEncoding + i, @encode(NSString *), strlen(@encode(NSString *))); i += strlen(@encode(NSString *)); _typeEncoding[i] = '\0'; class_addMethod(_logos_class$_ungrouped$NSObject, @selector(isSettingOn:), (IMP)&_logos_method$_ungrouped$NSObject$isSettingOn$, _typeEncoding); }Class _logos_class$_ungrouped$SBIconController = objc_getClass("SBIconController"); MSHookMessageEx(_logos_class$_ungrouped$SBIconController, @selector(iconAllowsBadging:), (IMP)&_logos_method$_ungrouped$SBIconController$iconAllowsBadging$, (IMP*)&_logos_orig$_ungrouped$SBIconController$iconAllowsBadging$);Class _logos_class$_ungrouped$SBDockView = objc_getClass("SBDockView"); MSHookMessageEx(_logos_class$_ungrouped$SBDockView, @selector(setBackgroundAlpha:), (IMP)&_logos_method$_ungrouped$SBDockView$setBackgroundAlpha$, (IMP*)&_logos_orig$_ungrouped$SBDockView$setBackgroundAlpha$);Class _logos_class$_ungrouped$SBIconView = objc_getClass("SBIconView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(_applyIconLabelAlpha:), (IMP)&_logos_method$_ungrouped$SBIconView$_applyIconLabelAlpha$, (IMP*)&_logos_orig$_ungrouped$SBIconView$_applyIconLabelAlpha$);MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(effectiveIconLabelAlpha), (IMP)&_logos_method$_ungrouped$SBIconView$effectiveIconLabelAlpha, (IMP*)&_logos_orig$_ungrouped$SBIconView$effectiveIconLabelAlpha);MSHookMessageEx(_logos_class$_ungrouped$SBIconView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBIconView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBIconView$layoutSubviews);Class _logos_class$_ungrouped$SBIconZoomAnimator = objc_getClass("SBIconZoomAnimator"); MSHookMessageEx(_logos_class$_ungrouped$SBIconZoomAnimator, @selector(_applyLabelAlphaFraction:), (IMP)&_logos_method$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$, (IMP*)&_logos_orig$_ungrouped$SBIconZoomAnimator$_applyLabelAlphaFraction$);Class _logos_class$_ungrouped$SBCoverSheetIconFlyInAnimator = objc_getClass("SBCoverSheetIconFlyInAnimator"); MSHookMessageEx(_logos_class$_ungrouped$SBCoverSheetIconFlyInAnimator, @selector(_labelAlphaForFraction:), (IMP)&_logos_method$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$, (IMP*)&_logos_orig$_ungrouped$SBCoverSheetIconFlyInAnimator$_labelAlphaForFraction$);Class _logos_class$_ungrouped$SBIconListPageControl = objc_getClass("SBIconListPageControl"); MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(_indicatorViewEnabled:index:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$_indicatorViewEnabled$index$);MSHookMessageEx(_logos_class$_ungrouped$SBIconListPageControl, @selector(_transitionIndicator:toEnabled:index:), (IMP)&_logos_method$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$, (IMP*)&_logos_orig$_ungrouped$SBIconListPageControl$_transitionIndicator$toEnabled$index$);Class _logos_class$_ungrouped$UIStatusBarForegroundView = objc_getClass("UIStatusBarForegroundView"); MSHookMessageEx(_logos_class$_ungrouped$UIStatusBarForegroundView, @selector(didMoveToWindow), (IMP)&_logos_method$_ungrouped$UIStatusBarForegroundView$didMoveToWindow, (IMP*)&_logos_orig$_ungrouped$UIStatusBarForegroundView$didMoveToWindow);Class _logos_class$_ungrouped$SBDashBoardPageControl = objc_getClass("SBDashBoardPageControl"); MSHookMessageEx(_logos_class$_ungrouped$SBDashBoardPageControl, @selector(initWithFrame:), (IMP)&_logos_method$_ungrouped$SBDashBoardPageControl$initWithFrame$, (IMP*)&_logos_orig$_ungrouped$SBDashBoardPageControl$initWithFrame$);Class _logos_class$_ungrouped$SBUICallToActionLabel = objc_getClass("SBUICallToActionLabel"); MSHookMessageEx(_logos_class$_ungrouped$SBUICallToActionLabel, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBUICallToActionLabel$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBUICallToActionLabel$layoutSubviews);Class _logos_class$_ungrouped$SBFLockScreenDateSubtitleDateView = objc_getClass("SBFLockScreenDateSubtitleDateView"); MSHookMessageEx(_logos_class$_ungrouped$SBFLockScreenDateSubtitleDateView, @selector(layoutSubviews), (IMP)&_logos_method$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews, (IMP*)&_logos_orig$_ungrouped$SBFLockScreenDateSubtitleDateView$layoutSubviews);} }
#line 288 "Tweak.xm"
