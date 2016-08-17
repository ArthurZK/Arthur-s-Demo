//
//  MasonryVC.m
//  MyDemo
//
//  Created by Arthur on 16/8/10.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "MasonryVC.h"
#import "Masonry.h"
#import "MasonryCell.h"


@interface MasonryVC ()<UITableViewDelegate , UITableViewDataSource>
{
    NSMutableArray *dataSource;
}
@property (strong, nonatomic)UITableView *tableView;

@end

@implementation MasonryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];

    [self dataSource];

    self.tableView = [[UITableView alloc]init];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:MasonryCell.class forCellReuseIdentifier:@"CELL"];
    self.tableView.estimatedRowHeight = 100;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    [self createUI];
    [self.view layoutIfNeeded];
    
    
}
-(NSMutableArray *)dataSource
{
    if (!dataSource) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"messages.plist" ofType:nil];
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:path];
        dataSource = [dictArray mutableCopy];
//        NSLog(@"%@",dataSource);
    }
    return dataSource;
}

- (void)createUI
{
    self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
    }];
}




//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    MasonryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
//    
//    CGFloat height = CGRectGetHeight(cell.contentView.frame);
//    
//    return height;
//}
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
    MasonryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL" forIndexPath:indexPath];
//    cell.textLabel.text = [NSString stringWithFormat:@"%ld", (long)indexPath.row ];
    NSDictionary *dic=  dataSource[indexPath.row];
    cell.contentLab.text = dic[@"content"];
    cell.themeImg.image = [UIImage imageNamed:dic[@"imageName"]];
    [cell layoutIfNeeded];
    return cell;
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
