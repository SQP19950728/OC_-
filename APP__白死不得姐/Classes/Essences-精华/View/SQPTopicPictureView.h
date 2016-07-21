//
//  SQPTopicPictureView.h
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SQPTopic;
@interface SQPTopicPictureView : UIView
+ (instancetype)pictureView;

/** 帖子数据 */
@property (nonatomic, strong) SQPTopic *topic;

@end
