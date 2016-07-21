//
//  SQPTopicViewController.h
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SQPTopicViewController : UITableViewController
/** 帖子类型(交给子类去实现) */
@property (nonatomic, assign) SQPTopicType type;
@end
