//
//  SQPMeViewController.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/7.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPMeViewController.h"
#import "SQPMeTableViewCell.h"
#import "SQPMeFooterView.h"
@interface SQPMeViewController ()

@end
static NSString *SQPMeID = @"me";
@implementation SQPMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    [self setNVC];
    [self setupTableView];
}

- (void)settingClick
{
    SQPLogFunc;
}

- (void)moonClick
{
    SQPLogFunc;
}
- (void)setupTableView
{
    // 设置背景色
    self.view.backgroundColor = SQPGlobalBg;
    [self.tableView registerClass:[SQPMeTableViewCell class] forCellReuseIdentifier:SQPMeID];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //调整header和footer
    self.tableView.sectionHeaderHeight = 0;
    self.tableView.sectionFooterHeight = SQPTopicCellMargin;
    
    //调整inset
    self.tableView.contentInset = UIEdgeInsetsMake(-25, 0, 0, 0);
    //设置footView
    self.tableView.tableFooterView = [[SQPMeFooterView alloc]init];
}
- (void)setNVC
{
    // 设置导航栏标题
    self.navigationItem.title = @"我的";
    
    // 设置导航栏右边的按钮
    UIBarButtonItem *settingItem = [UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonItem = [UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" target:self action:@selector(moonClick)];
    self.navigationItem.rightBarButtonItems = @[settingItem, moonItem];
}
#pragma mark - 数据源方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SQPMeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SQPMeID];
    
    if (indexPath.section == 0) {
        cell.imageView.image = [UIImage imageNamed:@"setup-head-default"];
        cell.textLabel.text = @"登录/注册";
    }else if (indexPath.section == 1)
    {
        cell.textLabel.text = @"离线下载";
    }
    return cell;
}
@end
