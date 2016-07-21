
//
//  SQPMeFooterView.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/20.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPMeFooterView.h"
#import "SQPSquare.h"
#import "UIButton+WebCache.h"
#import <MJExtension/MJExtension.h>
#import <AFNetworking/AFNetworking.h>
#import "SQPSquareButton.h"
@implementation SQPMeFooterView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        // 参数
        NSMutableDictionary *params = [NSMutableDictionary dictionary];
        params[@"a"] = 	@"square";
        params[@"c"] = @"topic";
        
        // 发送请求
        [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            [responseObject writeToFile:@"/Users/liuyang/Desktop/tiezi.plist" atomically:YES];
            NSArray *sqaure = [SQPSquare mj_objectArrayWithKeyValuesArray:responseObject[@"square_list"]];
            // 创建方块
            [self createSquare:sqaure];
        } failure:^(NSURLSessionDataTask *task, NSError *error) {
            
        }];
    }
    return self;
}
/**
 *创建方块
 */
- (void)createSquare:(NSArray *)sqaures
{
    // 一行最多4列
    int maxCols = 6;
    
    // 宽度和高度
    CGFloat buttonW = SQPScreenW / maxCols;
    CGFloat buttonH = buttonW;
    for (int i = 0; i<sqaures.count; i++) {
        SQPSquare *square = sqaures[i];
        SQPSquareButton *button = [SQPSquareButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:square.name forState:UIControlStateNormal];
//        [button insertSubview:self.superview atIndex:0];
        [button addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
        // 利用SDWebImage给按钮设置状态
        [button sd_setImageWithURL:[NSURL URLWithString:square.icon] forState:UIControlStateNormal];
        [self addSubview:button];
        int col = i % maxCols;
        int row = i /maxCols;
        button.x = col * buttonW;
        button.y = row * buttonH;
        button.width = buttonW;
        button.height = buttonH;
        self.height = CGRectGetMaxY(button.frame);
    }
    
    //重绘
    [self setNeedsDisplay];
}
- (void)btnClicked
{
    NSLog(@"-------->>>");
}
//把背景图片画上去(UIView没有背景图片这一属性,只能画上去)
- (void)drawRect:(CGRect)rect
{
    [[UIImage imageNamed:@"mainCellBackground"] drawInRect:rect];
}
@end
