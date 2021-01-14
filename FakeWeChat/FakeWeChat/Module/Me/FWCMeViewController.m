//
//  FWCMeViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCMeViewController.h"
#import "FWCCommonTableViewCell.h"
#import "FWCMeUserTableViewCell.h"
#import "FWCTableViewFooter.h"
#import "FWCTableViewHeader.h"
#import "FWCUI.h"
#import <YYKit/YYKit.h>

#define kCellDataIcon @"kCellDataIcon"
#define kCellDataTitle @"kCellDataTitle"

@interface FWCMeViewController ()

@end

@implementation FWCMeViewController

- (UIColor *)navigationBarBarTintColor {
    return FWCColor.cellBackground;
}

- (BOOL)showNavigationBarDivider {
    return NO;
}

- (NSArray<NSArray *> *)cellData {
    return @[
        @[ @{} ],
        @[ @{kCellDataIcon : @"me_watch", kCellDataTitle : @"Watch微信"} ],
        @[ @{kCellDataIcon : @"me_pay", kCellDataTitle : @"支付"} ],
        @[
            @{kCellDataIcon : @"me_favourite", kCellDataTitle : @"收藏"},
            @{kCellDataIcon : @"me_album", kCellDataTitle : @"朋友圈"},
            @{kCellDataIcon : @"me_card_pocket", kCellDataTitle : @"卡包"},
            @{kCellDataIcon : @"me_biaoqing", kCellDataTitle : @"表情"},
        ],
        @[ @{kCellDataIcon : @"me_setting", kCellDataTitle : @"设置"} ],
    ];
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellData[section].count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.cellData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FWCBaseTableViewCell *cell;
    if (indexPath.section == 0) {
        cell = [FWCMeUserTableViewCell.alloc initWithStyle:UITableViewCellStyleDefault
                                           reuseIdentifier:FWCMeUserTableViewCell.className];
    } else {
        FWCCommonTableViewCell *commonCell;
        commonCell = [FWCCommonTableViewCell.alloc initWithStyle:UITableViewCellStyleDefault
                                                 reuseIdentifier:FWCCommonTableViewCell.className];
        FWCCommonTableViewCellData *data = FWCCommonTableViewCellData.new;
        data.title = self.cellData[indexPath.section][indexPath.row][kCellDataTitle];
        data.iconName = self.cellData[indexPath.section][indexPath.row][kCellDataIcon];
        commonCell.data = data;
        [commonCell reloadData];
        cell = commonCell;
    }
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return UIView.alloc.init;
    } else {
        return FWCTableViewHeader.alloc.init;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return FWCTableViewFooter.alloc.init;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return FWCMeUserTableViewCell.cellHeight;
    } else {
        return FWCBaseTableViewCell.cellHeight;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
