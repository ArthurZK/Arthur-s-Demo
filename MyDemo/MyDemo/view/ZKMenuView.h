//
//  ZKMenuView1.h
//  MyDemo
//
//  Created by Arthur on 16/8/17.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZKCustomMenuDelegate <NSObject>

- (void)ZKCustomMenu:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;

@end

typedef void(^Dismiss)(void);
@interface ZKMenuView : UIView<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) id<ZKCustomMenuDelegate> delegate;
@property (nonatomic, strong) NSArray *arrData;
@property (nonatomic, strong) NSArray *arrImgName;
@property (nonatomic, copy) Dismiss dismiss;



/**
 *  创建弹窗
 *
 *  @param dataSource 数据源
 *  @param origin     起点
 *  @param width      宽度
 *  @param rowHeight  每行高度
 *  @param key        字典键
 *
 *  @return Menu
 */
- (instancetype)initWithDataSource:(NSArray *)dataSource
                            Origin:(CGPoint)origin
                             Width:(CGFloat)width
                         RowHeight:(CGFloat)rowHeight
                         KeyString:(NSString *)key;

- (void)dismissWithCompletion:(void (^)(ZKMenuView *object))completion;
@end
