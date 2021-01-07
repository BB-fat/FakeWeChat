//
//  FWCCommonTableViewCell.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/3.
//

#import "FWCCommonTableViewCell.h"
#import "FWCUI.h"

@implementation FWCCommonTableViewCellData

@end

@interface FWCCommonTableViewCell ()

@property(nonatomic, strong) UIView *leftContainer;
@property(nonatomic, strong) UIImageView *iconView;
@property(nonatomic, strong) QMUILabel *titleLabel;

@property(nonatomic, strong) UIView *rightContainer;
@property(nonatomic, strong) QMUILabel *subTitleLabel;

@end

@implementation FWCCommonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            layout.justifyContent = YGJustifySpaceBetween;
        }];

        _leftContainer = UIView.alloc.init;
        [_leftContainer configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
            FWCYogaAlignItemsCenter;
        }];

        _iconView = UIImageView.alloc.init;
        _iconView.hidden = YES;
        [_iconView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            layout.height = YGPointValue(18);
            layout.width = YGPointValue(20);
            layout.marginRight = YGPointValue(16);
        }];

        _titleLabel = QMUILabel.alloc.init;
        _titleLabel.font = UIFontMake(17);
        _titleLabel.textColor = FWCColor.normalText;
        [_titleLabel configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
        }];

        _rightContainer = UIView.alloc.init;
        [_rightContainer configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
            FWCYogaAlignItemsCenter;
        }];

        _subTitleLabel = QMUILabel.alloc.init;
        _subTitleLabel.font = UIFontMake(17);
        _subTitleLabel.textColor = FWCColor.greyText;
        [_subTitleLabel configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
        }];

        [self.arrowView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            layout.height = YGPointValue(13);
            layout.width = YGPointValue(8);

            layout.marginLeft = YGPointValue(10);
        }];

        [_leftContainer addSubview:_iconView];
        [_leftContainer addSubview:_titleLabel];

        [_rightContainer addSubview:_subTitleLabel];
        [_rightContainer addSubview:self.arrowView];

        [self.contentView addSubview:_leftContainer];
        [self.contentView addSubview:_rightContainer];
    }
    return self;
}

- (void)reloadData {
    if (!_data.iconName || _data.iconName.length == 0) {
        _iconView.hidden = YES;
        self.separatorInset = UIEdgeInsetsZero;
    } else {
        _iconView.hidden = NO;
        _iconView.image = [UIImage imageNamed:_data.iconName];
        self.separatorInset = UIEdgeInsetsMake(0, 52, 0, 0);
    }

    _titleLabel.text = _data.title;
    [_titleLabel sizeToFit];

    _subTitleLabel.text = _data.subTitle;
    [_subTitleLabel sizeToFit];

    [self setNeedsLayout];
}

@end
