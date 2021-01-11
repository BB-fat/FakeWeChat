//
//  FWCPayPageCommonButtonData.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/10.
//

#import "FWCPayPageCommonButtonData.h"

@implementation FWCPayPageCommonButtonData
- (instancetype)initWithDic:(NSDictionary *)dic {
    if (self = [super init]) {
        self.imageName = dic[@"imageName"];
        self.label = dic[@"label"];
    }
    return self;
}
+ (instancetype)buttonDataWithDic:(NSDictionary *)dic {
    return [[self alloc] initWithDic:dic];
}
@end
