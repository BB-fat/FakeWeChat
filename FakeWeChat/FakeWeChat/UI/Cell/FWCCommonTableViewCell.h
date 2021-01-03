//
//  FWCCommonTableViewCell.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/3.
//

#import "FWCBaseTableViewCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface FWCCommonTableViewCellData : NSObject

@property(nonatomic, strong) NSString *iconName;

@property(nonatomic, strong) NSString *title;

@end

@interface FWCCommonTableViewCell : FWCBaseTableViewCell

@property(nonatomic, strong) FWCCommonTableViewCellData *data;

@end

NS_ASSUME_NONNULL_END
