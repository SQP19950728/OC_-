//
//  SQPRecommendTagCell.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPRecommendTagCell.h"
#import "SQPRecommendTag.h"
#import "UIImageView+WebCache.h"

@interface SQPRecommendTagCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageListImageView;
@property (weak, nonatomic) IBOutlet UILabel *themeNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *subNumberLabel;

@end

@implementation SQPRecommendTagCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setRecommendTag:(SQPRecommendTag *)recommendTag
{
    _recommendTag = recommendTag;
    // set头像
    [self.imageListImageView setHeader:recommendTag.image_list];
    self.themeNameLabel.text = recommendTag.theme_name;
    NSString *subNumber = nil;
    if (recommendTag.sub_number < 10000) {
        subNumber = [NSString stringWithFormat:@"%zd人订阅", recommendTag.sub_number];
    } else { // 大于等于10000
        subNumber = [NSString stringWithFormat:@"%.1f万人订阅", recommendTag.sub_number / 10000.0];
    }
    self.subNumberLabel.text = subNumber;
}

- (void)setFrame:(CGRect)frame
{
    frame.origin.x = 5;
    frame.size.width -= 2 * frame.origin.x;
    frame.size.height -= 1;
    
    [super setFrame:frame];
}
@end
