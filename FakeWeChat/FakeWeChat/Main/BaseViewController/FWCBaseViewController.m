//
//  FWCBaseViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCBaseViewController.h"

@implementation FWCBaseViewController

- (void)didInitialize {
    [super didInitialize];
    self.view.backgroundColor = FWCColor.background;

    self.titleView.titleLabel.font = UIFontBoldMake(18);
}

#pragma mark NavigationController外观
- (UIColor *)titleViewTintColor {
    return FWCColor.normalText;
}

- (UIColor *)navigationBarBarTintColor {
    return FWCColor.background;
}

- (UITabBarItem *)fwc_tabBarItem {
    return self.navigationController.tabBarItem;
}

- (BOOL)shouldCustomizeNavigationBarTransitionIfHideable {
    return YES;
}

@end
