//
//  FWCPayBarIcon.h
//  FakeWeChat
//
//  Created by cedar on 2021/1/8.
//

#import "FWCUI.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCPayBarIcon : UIButton
@property(nonatomic, strong) UIImageView *iconView;
@property(nonatomic, strong) NSString *content;
@property(nonatomic, strong) QMUILabel *label;
@end

NS_ASSUME_NONNULL_END
