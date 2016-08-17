//
//  MainVC.m
//  MyDemo
//
//  Created by Arthur on 16/8/11.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "MainVC.h"
#import "CALayerVC.h"
#import "BezierPathVC.h"
#import "CATransitionVC.h"
#import "CreateQR_codeVC.h"
#import "CustomerMenuVC.h"

#import "Masonry.h"
@interface MainVC ()<UITableViewDelegate , UITableViewDataSource>
{
    NSArray *dataSource;
}
@property (strong, nonatomic) UITableView *tableView;

@end

@implementation MainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dataSource = @[
                   @"UIPickView",
                   @"FMDB",
                   @"Masonry",
                   @"JSPatch热更新",
                    @"LKDB数据库运用",
                    @"百度地图",
                    @"二维码",
                    @"照片上传",
                    @"照片上传附带进度",
                    @"字体适配机型",
                    @"日志记录",
                    @"列表倒计时",
                    @"H5交互WebViewJavascriptBridge",
                    @"继承BaseViewController运用",
                    @"列表空白页展现",
                    @"省市区三级联动",
                    @"自定义弹出窗",
                    @"YYText富文本实例",
                   @"CALayer",
                   @"贝塞尔动画",
                   @"CATransition",
                   @"生成二维码"
                      ];
    
    
    // Do any additional setup after loading the view.
    [self createUI];
}
-(void)createUI
{
    self.tableView = [[UITableView alloc]init];
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:@"CELL"];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return dataSource.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",dataSource[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row)
    {
        case 0:
        {
            pickerVC *VC = [[pickerVC alloc]init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 1:
        {
            FMDBvc *vc = [[FMDBvc alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2:
        {
            MasonryVC *VC = [[MasonryVC alloc] init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 3:
        {
            
        }
            break;
        case 4:
        {
            
        }
            break;
        case 5:
        {
            
        }
            break;
        case 6:
        {
            
        }
            break;
        case 7:
        {
            
        }
            break;
        
        case 8:
        {
            
        }
            break;
        case 9:
        {
            
        }
            break;
        case 10:
        {
            
        }
            break;
        case 11:
        {
            
        }
            break;
        case 12:
        {
            
        }
            break;
        case 13:
        {
            
        }
            break;
        case 14:
        {
            
        }
            break;
        case 15:
        {
            
        }
            break;
        case 16:
        {
            CustomerMenuVC *VC = [[CustomerMenuVC alloc] init];
            [self.navigationController pushViewController:VC  animated:YES];
        }
            break;
        case 17:
        {
            
        }
            break;
        case 18:
        {
            CALayerVC *vc = [[CALayerVC alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 19:
        {
            BezierPathVC *VC = [[BezierPathVC alloc]init];
            [self.navigationController pushViewController:VC animated:YES];

        }
            break;
        case 20:
        {
            CATransitionVC *VC = [[CATransitionVC alloc]init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 21:
        {
            CreateQR_codeVC *VC = [[CreateQR_codeVC alloc]init];
            [self.navigationController pushViewController:VC animated:YES];
        }
            break;
        case 22:
        {
            
        }
            break;
        case 23:
        {
            
        }
            break;
        case 24:
        {
            
        }
            break;
        default:
            break;
    }
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
