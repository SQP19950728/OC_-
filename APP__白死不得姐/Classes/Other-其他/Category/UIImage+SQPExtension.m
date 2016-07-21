//
//  UIImage+SQPExtension.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/16.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "UIImage+SQPExtension.h"

@implementation UIImage (SQPExtension)
- (UIImage *)circleImage
{
    //NO代表纯透明，YES代表不透明
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    
    //裁剪
    CGContextClip(ctx);
    
    //将图片画上去
    [self drawInRect:rect];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
