//
//  CustomerMenuVC.m
//  MyDemo
//
//  Created by Arthur on 16/8/17.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "CustomerMenuVC.h"
#import "ZKMenuView.h"



@interface CustomerMenuVC ()<ZKCustomMenuDelegate>
{
    NSArray *dataArray;
}
@property (weak, nonatomic) IBOutlet UIButton *menuBtn;
@property (strong, nonatomic) ZKMenuView *menu;
@end

@implementation CustomerMenuVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)MenuAction:(UIButton *)sender {
    
    dataArray = @[@{
                               @"name":@"zhou",
                               @"value":@0
                           },
                           @{
                               @"name":@"kang",
                               @"value":@1
                               }];
    
    
    
    
    __weak __typeof(self) weakSelf = self;
    if (!self.menu)
    {
        //        ,@"新建任务"
        _menu = [[ZKMenuView alloc]initWithDataSource:dataArray Origin:CGPointMake(CGRectGetMinX(_menuBtn.frame), CGRectGetMaxY(_menuBtn.frame)) Width:CGRectGetWidth(_menuBtn.frame) RowHeight:50 KeyString:@"name"];
        _menu.delegate = self;
        _menu.dismiss = ^() {
            weakSelf.menu = nil;
        };
        [self.view addSubview:_menu];
    } else {
        [_menu dismissWithCompletion:^(ZKMenuView *object) {
            weakSelf.menu = nil;
        }];
    }
}
- (void)ZKCustomMenu:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSLog(@"%@",[dataArray[indexPath.row]objectForKey:@"name"]);
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
