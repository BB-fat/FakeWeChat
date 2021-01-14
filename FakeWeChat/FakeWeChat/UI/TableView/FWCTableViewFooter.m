//
//  FWCTableViewFooter.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/14.
//

#import "FWCTableViewFooter.h"
#import "FWCUI.h"

@implementation FWCTableViewFooter

- (instancetype)init {
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, SCREEN_WIDTH, .2);
        self.backgroundColor = FWCColor.separator;
    }
    return self;
}

@end
