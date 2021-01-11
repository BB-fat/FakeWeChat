//
//  FWCPayPageTitleBlcok.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/10.
//

#import "FWCPayPageTitleBlcok.h"
#import "FWCThemeManager.h"
#import "FWCUI.h"
@interface FWCPayPageTitleBlcok ()

@end

@implementation FWCPayPageTitleBlcok
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        //💣设置背景颜色
        //设置字体
        self.title.font = [UIFont systemFontOfSize:25.0];
        [self addSubview:self.title];
        [self configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaAlignItemsCenter;
            FWCYogaAlignItemsSpaceBetween;
            FWCYogaFlexDirectionColumn;
        }];
        [self.yoga applyLayoutPreservingOrigin:YES];
    }

    return self;
}

@end
