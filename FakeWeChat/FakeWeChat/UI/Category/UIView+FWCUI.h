//
//  UIView+FWCUI.h
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (frame)

@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGFloat top;
@property(nonatomic, assign) CGFloat left;
@property(nonatomic, assign) CGFloat bottom;
@property(nonatomic, assign) CGFloat right;
@property(nonatomic, assign) CGFloat centerX;
@property(nonatomic, assign) CGFloat centerY;

@end

@interface UIView (subview)

- (BOOL)containsSubview:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
