//
//  UIBarButtonItem+SQPExtension.m
//  百思不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "UIBarButtonItem+SQPExtension.h"

@implementation UIBarButtonItem (SQPExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[self alloc] initWithCustomView:button];
}
@end
