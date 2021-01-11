//
//  FWCColor.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/18.
//

#import "FWCColor.h"

@implementation FWCColor

#pragma mark Core Colors
+ (UIColor *)coreGreen1 {
    return [UIColor qmui_colorWithHexString:@"1AAD19"];
}

+ (UIColor *)coreGreen2 {
    return [UIColor qmui_colorWithHexString:@"2BA245"];
}

+ (UIColor *)coreGrey1 {
    return [UIColor qmui_colorWithHexString:@"4D4D4D"];
}

+ (UIColor *)coreGrey2 {
    return [UIColor qmui_colorWithHexString:@"888888"];
}

+ (UIColor *)coreGrey3 {
    return [UIColor qmui_colorWithHexString:@"AAAAAA"];
}

+ (UIColor *)coreGrey4 {
    return [UIColor qmui_colorWithHexString:@"F1F1F1"];
}

#pragma mark Supporting Colors
+ (UIColor *)supportingGreen {
    return [UIColor qmui_colorWithHexString:@"91ED61"];
}

+ (UIColor *)supportingYellow {
    return [UIColor qmui_colorWithHexString:@"FFBE00"];
}

+ (UIColor *)supportingRed1 {
    return [UIColor qmui_colorWithHexString:@"EA6853"];
}

+ (UIColor *)supportingRed2 {
    return [UIColor qmui_colorWithHexString:@"F76260"];
}

+ (UIColor *)supportingRed3 {
    return [UIColor qmui_colorWithHexString:@"D84E43"];
}

+ (UIColor *)supportingBlue1 {
    return [UIColor qmui_colorWithHexString:@"2782D7"];
}

+ (UIColor *)supportingBlue2 {
    return [UIColor qmui_colorWithHexString:@"10AEFF"];
}

#pragma mark Common Colors
+ (UIColor *)background {
    return FWCColorThemed(FWCColor.coreGrey4, FWCHexColor(@"0F1011"));
}

+ (UIColor *)cellBackground {
    return FWCColorThemed(UIColor.whiteColor, FWCHexColor(@"18191A"));
}

+ (UIColor *)normalText {
    return FWCColorThemed(UIColor.blackColor, UIColor.whiteColor);
}

+ (UIColor *)greyText {
    return FWCColorThemed(FWCHexColor(@"7F8081"), FWCHexColor(@"8A8B8C"));
}

+ (UIColor *)separator {
    return FWCColorThemed(FWCHexColor(@"E5E4E5"), FWCHexColor(@"252425"));
}

@end
