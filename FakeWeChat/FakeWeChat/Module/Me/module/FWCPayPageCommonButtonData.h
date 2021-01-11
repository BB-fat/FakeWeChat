//
//  FWCPayPageCommonButtonData.h
//  FakeWeChat
//
//  Created by cedar on 2021/1/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCPayPageCommonButtonData : NSObject
@property(nonatomic, strong) NSString *imageName;
@property(nonatomic, strong) NSString *label;
+ (instancetype)buttonDataWithDic:(NSDictionary *)dic;
@end

NS_ASSUME_NONNULL_END
