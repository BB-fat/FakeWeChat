//
//  FWCBaseTableViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/2.
//

#import "FWCBaseTableViewController.h"
#import "FWCUI.h"

@interface FWCBaseTableViewController ()

@end

@implementation FWCBaseTableViewController

- (void)didInitialize {
    [super didInitialize];
    self.tableView.backgroundColor = FWCColor.background;

    self.titleView.titleLabel.font = UIFontBoldMake(18);

    self.tableView.separatorColor = FWCColorThemed(FWCHexColor(@"E4E5E6"), FWCHexColor(@"232425"));
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
