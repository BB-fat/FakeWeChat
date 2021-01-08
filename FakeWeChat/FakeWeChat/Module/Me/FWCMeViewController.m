//
//  FWCMeViewController.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import "FWCMeViewController.h"
#import "FWCCommonTableViewCell.h"
#import "FWCUI.h"
#import <YYKit/YYKit.h>

@interface FWCMeViewController ()

@end

@implementation FWCMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (BOOL)preferredNavigationBarHidden {
    return YES;
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FWCCommonTableViewCell *cell;
    cell = [tableView dequeueReusableCellWithIdentifier:FWCCommonTableViewCell.className];
    if (!cell) {
        cell = [FWCCommonTableViewCell.alloc initWithStyle:UITableViewCellStyleDefault
                                           reuseIdentifier:FWCCommonTableViewCell.className];
        FWCCommonTableViewCellData *data = FWCCommonTableViewCellData.new;
        data.title = @"测试cell";
        data.iconName = @"me_pay";
        data.subTitle = @"未开启";
        cell.data = data;
        [cell reloadData];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return FWCBaseTableViewCell.cellHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}

@end
