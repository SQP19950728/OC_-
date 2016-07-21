//
//  SQPRecommendCategoryCell.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPRecommendCategoryCell.h"
#import "SQPRecommendCategory.h"

@interface SQPRecommendCategoryCell()
@property (weak, nonatomic) IBOutlet UIView *selectedIndicator;
@end

@implementation SQPRecommendCategoryCell

- (void)awakeFromNib {
    self.backgroundColor = SQPRGBColor(244, 244, 244);
    self.selectedIndicator.backgroundColor = SQPRGBColor(219, 21, 26);
    
    // 当cell的selection为None时, 即使cell被选中了, 内部的子控件也不会进入高亮状态
    //    self.textLabel.highlightedTextColor = XMGRGBColor(219, 21, 26);
}

- (void)setCategory:(SQPRecommendCategory *)category
{
    _category = category;
    self.textLabel.text = category.name;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    // 重新调整内部textLabel的frame
    self.textLabel.y = 2;
    self.textLabel.height = self.contentView.height - 2 * self.textLabel.y;
}

/**
 * 可以在这个方法中监听cell的选中和取消选中
 */
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    self.selectedIndicator.hidden = !selected;
    self.textLabel.textColor = selected ? self.selectedIndicator.backgroundColor : SQPRGBColor(78, 78, 78);
}
@end
