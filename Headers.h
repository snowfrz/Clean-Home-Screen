#import <UIKit/UIKit.h>
#import <os/log.h>
#import <substrate.h>

@interface _UIBackdropView : UIView {}
@end

@interface SBFloatingDockPlatterView : UIView 
@property (nonatomic,retain) _UIBackdropView * backgroundView; 
@end

@interface SBIconView : UIView
@property (assign,nonatomic) double iconLabelAlpha;
@end

@interface SBIconListPageControl : UIPageControl {}
@end

@interface SBUICallToActionLabel : UIView {}
@end

@interface BSUIScrollView : UIScrollView
@end

@interface SBPagedScrollView : BSUIScrollView
-(void)_updateCurrentPageForScrollOffset;
@end

@interface SBDashBoardViewControllerBase : UIViewController
@end

@interface SBDashBoardPresentationViewController : SBDashBoardViewControllerBase
@end

@interface SBDashBoardPageViewController : SBDashBoardPresentationViewController
@end

@interface SBDashBoardTodayPageViewController : SBDashBoardPageViewController
@end

@interface SBHomeScreenTodayViewController : UIViewController
@end