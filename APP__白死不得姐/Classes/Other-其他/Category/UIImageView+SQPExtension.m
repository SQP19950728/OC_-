//
//  UIImageView+SQPExtension.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/16.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "UIImageView+SQPExtension.h"
#import "UIImageView+WebCache.h"
@implementation UIImageView (SQPExtension)
- (void)setHeader:(NSString *)url
{
    UIImage *placeholder = [[UIImage imageNamed:@"defaultUserIcon"] circleImage];
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:placeholder completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        self.image = image ? [image circleImage] : placeholder;
    }];
}
@end
