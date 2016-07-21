//
//  NSDate+SQPExtension.h
//  百思不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (SQPExtension)
/**
 * 比较from和self的时间差值
 */
- (NSDateComponents *)deltaFrom:(NSDate *)from;

/**
 * 是否为今年
 */
- (BOOL)isThisYear;

/**
 * 是否为今天
 */
- (BOOL)isToday;

/**
 * 是否为昨天
 */
- (BOOL)isYesterday;

@end
