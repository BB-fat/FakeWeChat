//
//  FWCPayViewController.m
//  FakeWeChat
//
//  Created by cedar on 2021/1/8.
//

#import "FWCPayViewController.h"
#import "FWCPayBar.h"
#import "FWCServiceBar.h"
#import "FWCUI.h"

@interface FWCPayViewController ()

@property(nonatomic, strong) UIScrollView *scrollView;

@end

@implementation FWCPayViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view configureLayoutWithBlock:^(YGLayout *_Nonnull layout) {
        FWCYogaEnable;
        FWCYogaFlexDirectionColumn;
        FWCYogaAlignItemsStart;
    }];
    [self.view.yoga applyLayoutPreservingOrigin:YES];

    FWCPayBar *payBar = FWCPayBar.new;
    // FWCServiceBar * serviceBar = FWCServiceBar.new;

    [self.view addSubview:payBar];
    //[self.view addSubview:serviceBar];
}

@end
