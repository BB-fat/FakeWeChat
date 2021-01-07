//
//  FWCBaseTableViewCell.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2020/12/23.
//

#import "FWCBaseTableViewCell.h"
#import "FWCUI.h"

@interface FWCBaseTableViewCell ()

@property(nonatomic, strong) UIImageView *arrowView;

@end

@implementation FWCBaseTableViewCell

// 子类重写这个方法供TableView调用
// 默认高度为【我】页面内cell的高度
+ (CGFloat)cellHeight {
    return 57;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.backgroundColor = FWCColor.cellBackground;

        [self.contentView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
            FWCYogaAlignItemsCenter;
            FWCYogaPaddingHorizontal(16);
            FWCYogaPaddingVertical(10);
        }];
    }
    return self;
}

- (UIImageView *)arrowView {
    if (_arrowView) {
        return _arrowView;
    } else {
        _arrowView = [UIImageView.alloc initWithImage:[UIImage imageNamed:@"cell_arrow"]];
        return _arrowView;
    }
}

- (void)layoutIfNeeded {
    [super layoutIfNeeded];
    [self.contentView.yoga applyLayoutPreservingOrigin:YES];
}

- (void)reloadData {
    // 子类实现
}

@end
