//
//  FWCColor.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/18.
//

/**
 根据微信标准色彩指引（WeChat Standard Color Guidelines）2017年3月版
 https://res.wx.qq.com/a/wx_fed/wedesign/res/static/res/2b7c/WeChat_Standard_Color_Guidelines_201703.pdf
 */

#import "FWCColorMacro.h"
#import <Foundation/Foundation.h>
#import <QMUIKit/QMUIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FWCColor : NSObject

// core colors
+ (UIColor *)coreGreen1;
+ (UIColor *)coreGreen2;
+ (UIColor *)coreGreen3;
+ (UIColor *)coreGrey1;
+ (UIColor *)coreGrey2;
+ (UIColor *)coreGrey3;
+ (UIColor *)coreGrey4;

// supporting colors
+ (UIColor *)supportingGreen;
+ (UIColor *)supportingYellow;
+ (UIColor *)supportingRed1;
+ (UIColor *)supportingRed2;
+ (UIColor *)supportingRed3;
+ (UIColor *)supportingBlue1;
+ (UIColor *)supportingBlue2;

// common colors
+ (UIColor *)background;
+ (UIColor *)cellBackground;
+ (UIColor *)normalText;
+ (UIColor *)greyText;

@end

NS_ASSUME_NONNULL_END
