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

@end

@implementation FWCCommonTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            layout.justifyContent = YGJustifySpaceBetween;
        }];

        _leftContainer = UIView.alloc.init;
        [_leftContainer configureLayoutWithBlock:^(YGLayout *_Nonnull layout){
            FWCYogaEnable FWCYogaFlexDirectionRow}];

        _iconView = UIImageView.alloc.init;
        _iconView.hidden = YES;
        [_iconView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable layout.height = YGPointValue(30);
            layout.width = YGPointValue(30);
            layout.marginRight = YGPointValue(20);
        }];

        _titleLabel = QMUILabel.alloc.init;
        _titleLabel.font = UIFontMake(14);
        _titleLabel.textColor = FWCColor.normalText;
        [_titleLabel configureLayoutWithBlock:^(YGLayout *_Nonnull layout){
            FWCYogaEnable}];

        [self.arrowView configureLayoutWithBlock:^(YGLayout *_Nonnull layout){
            FWCYogaEnable}];

        [_leftContainer addSubview:_iconView];
        [_leftContainer addSubview:_titleLabel];

        [self.contentView addSubview:_leftContainer];
        [self.contentView addSubview:self.arrowView];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)reloadData {
    if (!_data.iconName || _data.iconName.length == 0) {
        _iconView.hidden = YES;
    } else {
        _iconView.hidden = NO;
        _iconView.image = [UIImage imageNamed:_data.iconName];
    }

    _titleLabel.text = _data.title;
    [_titleLabel sizeToFit];

    [self setNeedsLayout];
}

@end
