//
//  FWCBaseViewController.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCUI.h"

NS_ASSUME_NONNULL_BEGIN

@interface FWCBaseViewController : QMUICommonViewController

@property(nonatomic, readonly) UITabBarItem *fwc_tabBarItem;

- (BOOL)showNavigationBarDivider;

@end

NS_ASSUME_NONNULL_END
