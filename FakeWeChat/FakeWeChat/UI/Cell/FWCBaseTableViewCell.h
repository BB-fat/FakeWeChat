//
//  FWCBaseTableViewCell.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCBaseTableViewCell : UITableViewCell

+ (CGFloat)cellHeight;

- (UIImageView *)arrowView;

- (void)reloadData;

@end

NS_ASSUME_NONNULL_END
