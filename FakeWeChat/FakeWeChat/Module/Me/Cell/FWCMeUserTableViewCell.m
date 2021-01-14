//
//  FWCMeUserTableViewCell.m
//  FakeWeChat
//
//  Created by 鞠欣诚 on 2021/1/8.
//

#import "FWCMeUserTableViewCell.h"
#import "FWCUI.h"

#define AvatarHeight 60

@interface FWCMeUserTableViewCell ()

/*
 使用3个container辅助布局：
 right_item_container 除了头像之外所有的元素都在其中，纵向布局
 wxID_qrCode_container 微信号、二维码icon、箭头，横向布局
 qrCode_arrowView_container 二维码icon、箭头，横向布局
 */
@property(nonatomic, strong) UIView *right_item_container;

@property(nonatomic, strong) UIImageView *avatarView;

@property(nonatomic, strong) UIView *wxID_qrCode_container;

@property(nonatomic, strong) QMUILabel *nickNameLabel;
@property(nonatomic, strong) QMUILabel *wxIDLabel;

@property(nonatomic, strong) UIView *qrCode_arrowView_container;

@property(nonatomic, strong) UIImageView *qrCodeView;

@end

@implementation FWCMeUserTableViewCell

+ (CGFloat)cellHeight {
    return 136;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.separatorInset = UIEdgeInsetsZero;

        [self.contentView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaJustifyContentSpaceBetween;
            FWCYogaAlignItemsCenter;
            layout.paddingBottom = YGPointValue(40);
        }];

        _avatarView = [UIImageView.alloc initWithImage:[UIImage imageNamed:@"me_avatar"]];
        _avatarView.layer.cornerRadius = 6;
        _avatarView.layer.masksToBounds = YES;
        [_avatarView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaHeightAndWidth(AvatarHeight);
        }];

        FWCLabelInitAndConfigure(_nickNameLabel, UIFontBoldMake(22), FWCColor.normalText);
        _nickNameLabel.text = @"羽球程序员";
        [_nickNameLabel sizeToFit];
        [_nickNameLabel configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
        }];

        FWCLabelInitAndConfigure(_wxIDLabel, UIFontMake(16), FWCColor.greyText);
        _wxIDLabel.text = @"微信号： BBfat-Pro";
        [_wxIDLabel sizeToFit];
        [_wxIDLabel configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
        }];

        _qrCodeView = [UIImageView.alloc initWithImageNamed:@"me_qrcode"];
        [_qrCodeView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaHeightAndWidth(18);
        }];

        [self.arrowView configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaHeight(13);
            FWCYogaWidth(8);
            layout.marginLeft = YGPointValue(20);
        }];

        _right_item_container = UIView.alloc.init;
        [_right_item_container configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionColumn;
            FWCYogaHeight(AvatarHeight);
            FWCYogaJustifyContentSpaceBetween;
            layout.width = YGPercentValue(80);
        }];

        _wxID_qrCode_container = UIView.alloc.init;
        [_wxID_qrCode_container configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
            FWCYogaJustifyContentSpaceBetween;
            layout.width = YGPercentValue(100);
        }];

        _qrCode_arrowView_container = UIView.alloc.init;
        [_qrCode_arrowView_container configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
            FWCYogaEnable;
            FWCYogaFlexDirectionRow;
            FWCYogaAlignItemsCenter;
        }];

        [self.contentView addSubview:_avatarView];
        [self.contentView addSubview:_right_item_container];
        [_right_item_container addSubview:_nickNameLabel];
        [_right_item_container addSubview:_wxID_qrCode_container];
        [_wxID_qrCode_container addSubview:_wxIDLabel];
        [_wxID_qrCode_container addSubview:_qrCode_arrowView_container];
        [_qrCode_arrowView_container addSubview:_qrCodeView];
        [_qrCode_arrowView_container addSubview:self.arrowView];

        [self setNeedsLayout];
    }
    return self;
}

@end
