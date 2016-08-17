//
//  FMDBvc.m
//  MyDemo
//
//  Created by Arthur on 16/8/9.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "FMDBvc.h"

#import "FMDB.h"
#import "MasonryVC.h"
@interface FMDBvc ()
@property (weak, nonatomic) IBOutlet UITextField *age;
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (strong, nonatomic) FMDatabase *db;

@end

@implementation FMDBvc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

- (IBAction)addAction:(UIButton *)sender {
}

-(void)openDb:(NSString * )dbname
{
    //取得数据库保存路径，通常保存沙盒Documents目录
    NSString *directory=[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *filePath=[directory stringByAppendingPathComponent:dbname];
    //创建FMDatabase对象
    self.db=[FMDatabase databaseWithPath:filePath];
    //创建打开数据库
    if ([self.db open])
    {
        NSLog(@"数据库打开成功!");
        //这里可以同时创建表
        BOOL result=[self.db executeUpdate:@"CREATE TABLE IF NOT EXISTS t_student (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, age integer NOT NULL);"];
    }
    else
    {
        NSLog(@"数据库打开失败!");
    }
}
        
        
    
    
- (IBAction)queryAction:(UIButton *)sender {
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
