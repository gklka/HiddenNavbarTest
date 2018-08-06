//
//  SecondViewController.m
//  Proba
//
//  Created by GK on 2018.08.06..
//  Copyright © 2018. Kwindoo. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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

    navBar.tintColor = [UIColor whiteColor];
    
    // Mark nav bar invisible
    [navBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    navBar.shadowImage = [UIImage new];
    navBar.translucent = YES;
    navBar.backgroundColor = [UIColor clearColor];
    
    // Add shadow to buttons
    Class navigationBarContentViewClass = NSClassFromString(@"_UINavigationBarContentView");
    if (navigationBarContentViewClass) {
        for (UIView *view in navBar.subviews) {
            if ([view isKindOfClass:navigationBarContentViewClass]) {
                view.layer.shadowOffset = CGSizeMake(0, 2);
                view.layer.shadowOpacity = 0.9f;
                view.layer.shadowRadius = 4.f;
            }
            
            view.exclusiveTouch = YES;
        }
    }
}

@end
