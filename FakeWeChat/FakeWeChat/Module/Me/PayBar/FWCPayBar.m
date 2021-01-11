//
//  FWCPayBar.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/8.
//

#import "FWCPayBar.h"
#import "FWCPayBarIcon.h"
#import "FWCUI.h"
@interface FWCPayBar ()
@property(nonatomic, strong) FWCPayBarIcon *buttonRight;
@property(nonatomic, strong) FWCPayBarIcon *buttonLeft;

@end

@implementation FWCPayBar

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {

        self.backgroundColor = FWCColor.coreGreen3;
        self.layer.cornerRadius = 8;
        self.layer.masksToBounds = YES;
        self.layer.shadowOpacity = 0.5;

        [self configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            layout.isEnabled = YES;
            layout.flexDirection = YGFlexDirectionRow;
            layout.alignItems = YGAlignCenter;
            layout.justifyContent = YGJustifySpaceBetween;
            layout.height = YGPointValue(150);
            layout.width = YGPointValue(SCREEN_WIDTH);
        }];

        self.buttonLeft = FWCPayBarIcon.alloc.init;
        //  self.buttonLeft.imageView.image = [UIImage imageNamed:@"me_pay.png"];
        self.buttonLeft.content = @"收付款";
        [self addSubview:self.buttonLeft];

        //        self.buttonRight = [FWCPayBarIcon new];
        //        self.buttonRight.iconImage.image = [UIImage imageNamed:@"me_pay.png"];
        //        self.buttonRight.label.text = @"钱包";
        //        [self.buttonRight.label sizeToFit];
        //        [self addSubview:self.buttonRight];

        [self.yoga applyLayoutPreservingOrigin:YES];
    }

    return self;
}

@end
