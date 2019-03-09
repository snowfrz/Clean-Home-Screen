// Copyright © 2018-2019 Justin Proulx
#import "Headers.h"

%hook NSObject
@interface NSObject (customObject)
- (BOOL)isSettingOn:(NSString *)keyStr;
@end


%new
- (BOOL)isSettingOn:(NSString *)keyStr
{
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
%end

// badges
%hook SBIconController

- (_Bool)iconAllowsBadging:(id)arg1
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"notifbadges"];

  if (isSettingOn)
  {
    return 0;
  }
  else
  {
    return %orig(arg1);
  }
}

%end

// dock
%hook SBDockView

- (void)setBackgroundAlpha:(double)arg1
{
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

  %orig(arg1);
}
%end

%hook SBFloatingDockPlatterView

- (void)layoutSubviews
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"dockbg"];

  %orig;

  if (isSettingOn)
  {
    self.backgroundView = nil;
  }
}

%end

// icon labels
%hook SBIconView

- (void)_applyIconLabelAlpha:(double)arg1
{
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

  %orig(arg1);
}

- (double)effectiveIconLabelAlpha
{
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

- (void)layoutSubviews
{
  %orig;

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

%end

%hook SBIconZoomAnimator

- (void)_applyLabelAlphaFraction:(double)arg1
{
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

  %orig(arg1);
}

%end


%hook SBCoverSheetIconFlyInAnimator

- (double)_labelAlphaForFraction:(double)arg1
{
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

  return %orig(arg1);
}

%end

// home screen page indicators
%hook SBIconListPageControl

- (id)_indicatorViewEnabled:(_Bool)arg1 index:(long long)arg2
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbhspageindicator"];

  id returnValue;
  if (isSettingOn)
  {
    returnValue = %orig(0, arg2);
  }
  else
  {
    returnValue = %orig;
  }
  return returnValue;

}

- (void)_transitionIndicator:(id)arg1 toEnabled:(_Bool)arg2 index:(long long)arg3
{
  %orig;

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbhspageindicator"];

  if (isSettingOn)
  {
    %orig(0, 0, 0);
    [self removeFromSuperview];
  }
  else
  {
    %orig;
  }
}

%end

// Status bar
%hook UIStatusBarForegroundView

-(void)didMoveToWindow
{
    %orig;

    NSObject *object = [[NSObject alloc] init];
    BOOL isSettingOn = [object isSettingOn:@"sbsb"];

    if (isSettingOn)
    {
      [self removeFromSuperview];
    }
}

%end

%hook UIStatusBar_Modern

-(void)layoutSubviews
{

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbsb"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
  else
  {
    %orig;
  }
}

%end

%hook SBDashBoardTeachableMomentsContainerView

-(void)_layoutControlCenterGrabber
{

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbsb"];

  if (!isSettingOn)
  {
    %orig;
  }
}

-(void)_layoutControlCenterGlyph
{

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sbsb"];

  if (!isSettingOn)
  {
    %orig;
  }
}

%end


// lock screen page indicators
%hook SBDashBoardPageControl

- (id)initWithFrame:(struct CGRect)arg1
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"sblspageindicator"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
    return nil;
  }
  else
  {
    return %orig;
  }
}

%end

// press home to unlock
%hook SBUICallToActionLabel

-(void)layoutSubviews
{
  %orig;

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"calltoaction"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
}

%end

%hook SBDashBoardTeachableMomentsContainerView

-(void)_layoutCallToActionLabel
{

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"calltoaction"];

  if (!isSettingOn)
  {
    %orig;
  }
}

%end

// lock screen date
%hook SBFLockScreenDateSubtitleDateView

-(void)layoutSubviews
{
  %orig;

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"lsdate"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
}

%end

%hook NCNotificationListSectionRevealHintView

-(void)layoutSubviews
{
  %orig;

  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"notificationhint"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
}

%end

// iPhone X floating buttons
%hook SBDashBoardQuickActionsButton

- (void)layoutSubviews
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iphonexlsfloatingbuttons"];

  if (isSettingOn)
  {
    [self removeFromSuperview];
  }
  else
  {
    %orig;
  }
}

%end

// iPhone X home indicator
%hook MTStaticColorPillView

-(void)setPillColor:(UIColor *)arg1
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"iphonexhomeindicator"];

  if (isSettingOn)
  {
    %orig([UIColor clearColor]);
  }
  else
  {
    %orig;
  }
}

%end

// Lock screen today view
%hook SBPagedScrollView

-(unsigned long long)currentPageIndex
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"lstodayview"];

  if (isSettingOn)
  {
    return (%orig > 0) ? %orig : 1;
  }
  else
  {
    return %orig;
  }
}

-(double)pageRelativeScrollOffset
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"lstodayview"];

  if (isSettingOn)
  {
    return 1;
  }
  else
  {
    return %orig;
  }
}

%end

%hook SBDashBoardTodayPageViewController

-(void)viewDidLoad
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"lstodayview"];

  if (isSettingOn)
  {
    [self.view removeFromSuperview];
  }
  else
  {
    %orig;
  }
}

%end

// home screen today view
%hook SBHomeScreenTodayViewController

-(void)viewDidLoad
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"hstodayview"];

  if (isSettingOn)
  {
    [self.view removeFromSuperview];
  }
  else
  {
    %orig;
  }
}

%end

%hook SBRootFolderView
// Credit to Nepeta for this method's logic, Twitter: https://twitter.com/NepetaDev
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
  NSObject *object = [[NSObject alloc] init];
  BOOL isSettingOn = [object isSettingOn:@"hstodayview"];

  if (isSettingOn)
  {
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;

    if (scrollView.contentOffset.x < width) 
    {
      [scrollView setContentOffset:CGPointMake(width, 0)];
    }
  }

  %orig;
}

%end