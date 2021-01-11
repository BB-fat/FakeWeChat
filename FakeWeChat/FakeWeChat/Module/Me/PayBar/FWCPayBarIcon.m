//
//  FWCPayBarIcon.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/8.
//

#import "FWCPayBarIcon.h"

@interface FWCPayBarIcon ()
@property(nonatomic, strong) QMUILabel *money;

@end

@implementation FWCPayBarIcon
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionColumn;
            FWCYogaAlignItemsCenter;
            layout.height = YGPointValue(150);
            layout.width = YGPointValue(SCREEN_WIDTH / 2);
            layout.paddingLeft = YGPointValue(10);
            layout.justifyContent = YGJustifySpaceBetween;
        }];

        _iconView = UIImageView.alloc.init;
        _iconView.image = [UIImage imageNamed:@"me_pay"];
        [_iconView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            layout.width = YGPointValue(50);
            layout.height = YGPointValue(50);
        }];

        _label = QMUILabel.alloc.init;
        _label.font = UIFontMake(17);
        [_label configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
        }];

        [self addSubview:_iconView];
        [self addSubview:_label];
        [self.yoga applyLayoutPreservingOrigin:YES];
    }
    return self;
}

- (void)setContent:(NSString *)content {
    _label.text = content;
    [_label sizeToFit];
    [self setNeedsLayout];
    [self.yoga applyLayoutPreservingOrigin:YES];
}

- (void)layoutIfNeeded {
    [super layoutIfNeeded];
    [self.yoga applyLayoutPreservingOrigin:YES];
}

@end
