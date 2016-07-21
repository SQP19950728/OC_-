//
//  SQPFriendTrendsViewController.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPFriendTrendsViewController.h"
#import "SQPRecommendViewController.h"
#import "SQPLoginRegisterViewController.h"
@interface SQPFriendTrendsViewController ()

@end

@implementation SQPFriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 设置导航栏标题
    self.navigationItem.title = @"我的关注";
    
    // 设置导航栏左边的按钮
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsClick)];
    
    // 设置背景色
    self.view.backgroundColor = SQPGlobalBg;

}
- (void)friendsClick
{
    SQPRecommendViewController *vc = [[SQPRecommendViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)loginRegister {
    SQPLoginRegisterViewController *login = [[SQPLoginRegisterViewController alloc] init];
    [self presentViewController:login animated:YES completion:nil];
}



@end
