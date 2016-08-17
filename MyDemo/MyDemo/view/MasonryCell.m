//
//  MasonryCell.m
//  MyDemo
//
//  Created by Arthur on 16/8/10.
//  Copyright © 2016年 Arthur. All rights reserved.
//

#import "MasonryCell.h"
#import "Masonry.h"
@implementation MasonryCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        _contentLab = [[UILabel alloc]init];
        _contentLab.numberOfLines  = 0;
        _themeImg = [[UIImageView alloc]init];
        [self.contentView addSubview:_contentLab];
        [self.contentView addSubview:_themeImg];
        
        [_contentLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView.mas_top).with.offset(10);
            make.leading.equalTo(self.contentView).with.offset(10);
            make.trailing.equalTo(self.contentView).with.offset(10);
        }];
        
        [_themeImg mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self.contentLab.mas_bottom).with.offset(8);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
            
        }];
        
        
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
