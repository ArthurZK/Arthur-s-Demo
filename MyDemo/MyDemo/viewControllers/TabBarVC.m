//
//  TabBarVC.m
//  MyDemo
//
//  Created by Arthur on 16/8/11.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "TabBarVC.h"
#import "MainVC.h"
#import "MoreVC.h"
#import "DiscoverVC.h"
#import "ServiceVC.h"
#import "pickerVC.h"
#import "FMDBvc.h"
#import "MasonryVC.h"
#import "NavigationVC.h"

@interface TabBarVC ()

@end

@implementation TabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tag = 501;
    MainVC *VC = [[MainVC alloc]init];
    VC.title = @"首页";
    NavigationVC *firstNav = [[NavigationVC alloc]initWithRootViewController:VC];
    UITabBarItem *firstItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"导航-首页"] tag:1];
    firstNav.tabBarItem = firstItem;
    
    DiscoverVC *VC1 = [[DiscoverVC alloc]init];
    VC1.title = @"发现";
    NavigationVC *secondNav = [[NavigationVC alloc]initWithRootViewController:VC1];
    UITabBarItem *secondItem = [[UITabBarItem alloc]initWithTitle:@"发现" image:[UIImage imageNamed:@"导航-首页"] tag:2];
    secondNav.tabBarItem = secondItem;
    
    ServiceVC *VC2 = [[ServiceVC alloc]init];
    VC2.title = @"服务";
    NavigationVC *thirdNav = [[NavigationVC alloc]initWithRootViewController:VC2];
    UITabBarItem *thirdItem = [[UITabBarItem alloc]initWithTitle:@"服务" image:[UIImage imageNamed:@"导航-首页"] tag:3];
    thirdNav.tabBarItem = thirdItem;
    
    
    MoreVC *VC3 = [[MoreVC alloc]init];
    VC3.title = @"更多";
    NavigationVC *fourNav = [[NavigationVC alloc]initWithRootViewController:VC3];
    UITabBarItem *fourItem = [[UITabBarItem alloc]initWithTitle:@"更多" image:[UIImage imageNamed:@"导航-首页"] tag:4];
    fourNav.tabBarItem = fourItem;

    
    
    NSArray *viewController = [[NSArray alloc]initWithObjects:firstNav,secondNav,thirdNav,fourNav, nil];
    self.viewControllers = viewController;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
