//
//  YJPublicBaseViewController.m
//  YJPublic_Base
//
//  Created by YJ on 2022/10/31.
//

#import "YJBaseViewController.h"
#import <YJBaseSDK_Extension/YJBaseExtensionHeader.h>


@interface YJBaseViewController ()

@end

@implementation YJBaseViewController

- (void)dealloc {
    NSLog(@"%s", __func__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yj_colorWithHex:0xF9F9F9];
    [self base_createNavi];
    [self base_createBackButton];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)willMoveToParentViewController:(UIViewController *)parent {
    if ([parent isKindOfClass:[UINavigationController class]]) {
        UINavigationController *naviVC = (UINavigationController *)parent;
        if (naviVC.viewControllers.count > 1) {
            self.hidesBottomBarWhenPushed = YES;
        }
    }
    [super willMoveToParentViewController:parent];
}

- (void)base_createNavi {
    self.hbd_tintColor = [UIColor blackColor];
    self.hbd_barTintColor = [UIColor whiteColor];
    self.hbd_barShadowHidden = YES;
    self.hbd_titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor yj_colorWithHex:0x333333],
                                     NSFontAttributeName : [UIFont systemFontOfSize:16 weight:UIFontWeightMedium]};
}

- (void)base_createBackButton {
    if (self.navigationController.viewControllers.firstObject != self) {
        NSBundle *bundle = [NSBundle bundleWithBundleName:@"YJBaseSDK" podName:nil];
        UIImage *image = [UIImage imageNamed:@"yj_navi_back_black" inBundle:bundle compatibleWithTraitCollection:nil];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(base_backAction)];
    }
}

- (void)base_backAction {
    if (self.isBeingPresented) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        if (self.navigationController.viewControllers.count == 1) {
            [self.navigationController dismissViewControllerAnimated:YES completion:nil];
        } else {
            [self.navigationController popViewControllerAnimated:YES];
        }
    }
}



@end
