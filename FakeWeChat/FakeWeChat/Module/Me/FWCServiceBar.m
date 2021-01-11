//
//  FWCServiceBar.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/10.
//

#import "FWCServiceBar.h"
#import "FWCPayPageButton.h"
#import "FWCPayPageCommonButtonData.h"
#import "FWCPayPageTitleBlcok.h"
#import "FWCUI.h"

@interface FWCServiceBar ()
@property(nonatomic, strong) NSArray *array;
@end

@implementation FWCServiceBar

#pragma mark 懒加载
- (NSArray *)array {
    if (_array == nil) {
        _array = [NSArray new];
        NSString *path = [[NSBundle mainBundle] pathForResource:@"FWCPayPageService" ofType:@"plist"];
        NSArray *plistArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *marray = [NSMutableArray new];
        for (NSDictionary *dic in plistArray) {
            FWCPayPageCommonButtonData *data = [FWCPayPageCommonButtonData buttonDataWithDic:dic];
            [marray addObject:data];
        }
        _array = marray.copy;
    }

    return _array;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = FWCColor.coreGreen3;
        self.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 400);
        self.layer.cornerRadius = 8;
        self.layer.masksToBounds = YES;

        [self configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexWrap;
            FWCYogaFlexDirectionRow;
            FWCYogaAlignItemsStart;
        }];

        FWCPayPageTitleBlcok *titleBlock = FWCPayPageTitleBlcok.new;
        titleBlock.title.text = @"腾讯服务";
        titleBlock.frame = CGRectMake(0, 0, self.frame.size.width, 20);
        [titleBlock setBackgroundColor:[UIColor blueColor]];

        [titleBlock configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
        }];
        [titleBlock.yoga applyLayoutPreservingOrigin:YES];
        [self addSubview:titleBlock];

        for (int i = 0; i < self.array.count; i++) {
            FWCPayPageButton *rect = [FWCPayPageButton new];
            rect.backgroundColor = [UIColor redColor];
            [rect configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
                layout.isEnabled = YES;
                layout.height = YGPointValue(SCREEN_WIDTH / 3 - 1);
                layout.width = YGPointValue(SCREEN_WIDTH / 3 - 1);
                layout.marginTop = YGPointValue(3);
            }];
            FWCPayPageCommonButtonData *buttonCommonData = self.array[i];
            rect.imageView.image =
                [[UIImageView alloc] initWithImage:[UIImage imageNamed:buttonCommonData.imageName]].image;
            rect.titleLabel.text = buttonCommonData.label;
            [self addSubview:rect];
        }

        [self.yoga applyLayoutPreservingOrigin:YES];
    }
    return self;
}

@end
