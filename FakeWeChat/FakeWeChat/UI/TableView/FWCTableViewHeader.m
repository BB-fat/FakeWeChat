//
//  FWCTableViewHeader.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/14.
//

#import "FWCTableViewHeader.h"
#import "FWCUI.h"

@implementation FWCTableViewHeader

- (instancetype)init {
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, 10);
        self.backgroundColor = FWCColor.background;
        CALayer *shadowLayer = CALayer.alloc.init;
        shadowLayer.frame = CGRectMake(0, 9.8, SCREEN_WIDTH, .2);
        shadowLayer.backgroundColor = FWCColor.separator.CGColor;
        [self.layer addSublayer:shadowLayer];
    }
    return self;
}

@end
