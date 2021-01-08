//
//  FWCBaseTableViewController.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/2.
//

#import <QMUIKit/QMUIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCBaseTableViewController : QMUICommonTableViewController

@property(nonatomic, readonly) UITabBarItem *fwc_tabBarItem;

- (BOOL)showNavigationBarDivider;

@end

NS_ASSUME_NONNULL_END
