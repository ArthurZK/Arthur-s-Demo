//
//  pickerVC.m
//  MyDemo
//
//  Created by Arthur on 16/8/9.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "pickerVC.h"
#import "FMDBvc.h"


@interface pickerVC ()
{
    NSArray *dataSource;
}
@end

@implementation pickerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    dataSource = @[@"1",@"2",@"3",@"4",@"5",@"6"];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return dataSource.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return dataSource[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (component) {
        case 0:
        {
            NSLog(@"第一列,我是%@",dataSource[row]);
        }
            break;
        case 1:
        {
            NSLog(@"第2列,我是%@",dataSource[row]);
        }
            break;
        default:
            break;
    }
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
