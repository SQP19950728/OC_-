//
//  UIBarButtonItem+SQPExtension.h
//  百思不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (SQPExtension)
+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
