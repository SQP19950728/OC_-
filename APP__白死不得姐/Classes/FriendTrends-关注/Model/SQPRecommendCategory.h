//
//  SQPRecommendCategory.h
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SQPRecommendCategory : NSObject
/** id */
@property (nonatomic, assign) NSInteger ID;
/** <#注释#> */
@property (nonatomic, copy) NSString *desc;
/** 总数 */
@property (nonatomic, assign) NSInteger count;
/** 名字 */
@property (nonatomic, copy) NSString *name;

/** 这个类别对应的用户数据 */
@property (nonatomic, strong) NSMutableArray *users;
/** 总数 */
@property (nonatomic, assign) NSInteger total;
/** 当前页码 */
@property (nonatomic, assign) NSInteger currentPage;

@end
