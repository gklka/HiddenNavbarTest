//
//  TableViewController.m
//  Proba
//
//  Created by GK on 2018.08.06..
//  Copyright © 2018. Kwindoo. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self setupNavBar];
}

- (void)setupNavBar {
    UINavigationBar *navBar = self.navigationController.navigationBar;
    if (!navBar) return;

    [navBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    navBar.shadowImage = nil;
//    navBar.tintColor = [UINavigationBar appearance].tintColor;
    navBar.tintAdjustmentMode = UIViewTintAdjustmentModeNormal;
    
    for (UIView *view in navBar.subviews) {
        view.layer.shadowOpacity = 0;
        view.exclusiveTouch = YES;
    }
}

@end
