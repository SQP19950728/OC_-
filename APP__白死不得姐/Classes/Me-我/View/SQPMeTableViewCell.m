
//
//  SQPMeTableViewCell.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/20.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPMeTableViewCell.h"

@implementation SQPMeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
            self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        UIImageView *bgView = [[UIImageView alloc] init];
        bgView.image = [UIImage imageNamed:@"mainCellBackground"];
        self.backgroundView = bgView;
        
        self.textLabel.textColor = [UIColor darkGrayColor];
        self.textLabel.font = [UIFont systemFontOfSize:16];
    }
    return self;
}
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (self.imageView.image == nil)return;
    self.imageView.width = 35;
    self.imageView.height = self.imageView.width;
    self.imageView.centerY = self.contentView.height * 0.5;
    self.textLabel.x = CGRectGetMaxX(self.imageView.frame) + SQPTopicCellMargin;
}
//- (void)setFrame:(CGRect)frame
//{
//    frame.origin.y -= 25;
//    [super setFrame:frame];
//}
@end
