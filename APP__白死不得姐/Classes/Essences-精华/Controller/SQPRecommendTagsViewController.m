//
//  SQPRecommendTagsViewController.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPRecommendTagsViewController.h"
#import "SQPRecommendTag.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "MJExtension.h"
#import "SQPRecommendTagCell.h"

@interface SQPRecommendTagsViewController ()
/** 标签数据 */
@property (nonatomic, strong) NSArray *tags;
@end

static NSString * const SQPTagsId = @"tag";

@implementation SQPRecommendTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupTableView];
    
    [self loadTags];
}

- (void)loadTags
{
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeBlack];
    
    // 请求参数
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"tag_recommend";
    params[@"action"] = @"sub";
    params[@"c"] = @"topic";
    
    // 发送请求
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        self.tags = [SQPRecommendTag mj_objectArrayWithKeyValuesArray:responseObject];
        [self.tableView reloadData];
        
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [SVProgressHUD showErrorWithStatus:@"加载标签数据失败!"];
    }];
}

- (void)setupTableView
{
    self.title = @"推荐标签";
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([SQPRecommendTagCell class]) bundle:nil] forCellReuseIdentifier:SQPTagsId];
    self.tableView.rowHeight = 70;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.backgroundColor = SQPGlobalBg;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tags.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SQPRecommendTagCell *cell = [tableView dequeueReusableCellWithIdentifier:SQPTagsId];
    
    cell.recommendTag = self.tags[indexPath.row];
    
    return cell;
}

@end
