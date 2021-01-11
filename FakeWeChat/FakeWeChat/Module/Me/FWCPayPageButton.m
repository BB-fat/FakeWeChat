//
//  FWCPayPageButton.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/10.
//

#import "FWCPayPageButton.h"
#import "FWCColor.h"
#import "FWCUI.h"
@implementation FWCPayPageButton
- (instancetype)initWithFrame:(CGRect)frame {

    if (self = [super initWithFrame:frame]) {
        //设置边框
        [self.layer setBorderWidth:1.0];
        [self.layer setBorderColor:FWCColor.coreGrey4.CGColor];
        //设置字体大小和颜色
        self.titleLabel.font = [UIFont systemFontOfSize:25.0];
        self.titleLabel.textColor = [FWCColor coreGrey4];

        //配置图片和文字的位置
        [self setImageEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.intrinsicContentSize.height,
                                                  0,
                                                  0,
                                                  -self.titleLabel.intrinsicContentSize.width)];
        [self setTitleEdgeInsets:UIEdgeInsetsMake(
                                     self.imageView.frame.size.height, -self.imageView.frame.size.width, 0, 0)];
    }
    return self;
}

@end
