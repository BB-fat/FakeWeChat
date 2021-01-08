//
//  UIImageView+FWCUI.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/8.
//

#import "UIImageView+FWCUI.h"

@implementation UIImageView (FWCUI)

- (instancetype)initWithImageNamed:(NSString *)imageName {
    return [self initWithImage:[UIImage imageNamed:imageName]];
}

@end
