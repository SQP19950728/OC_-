//
//  SQPNewViewController.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPNewViewController.h"

@interface SQPNewViewController ()

@end

@implementation SQPNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置导航栏标题
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    // 设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    // 设置背景色
    self.view.backgroundColor = SQPGlobalBg;
}

- (void)tagClick
{
    SQPLogFunc;
}
@end
