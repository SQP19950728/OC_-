//
//  SQPCommentCell.m
//  APP__白死不得姐
//
//  Created by China-SQP on 16/6/12.
//  Copyright © 2016年 China-SQP. All rights reserved.
//

#import "SQPCommentCell.h"
#import "SQPComment.h"
#import "UIImageView+WebCache.h"
#import "SQPUser.h"

@interface SQPCommentCell()
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;
@property (weak, nonatomic) IBOutlet UIImageView *sexView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UILabel *likeCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *voiceButton;
@end

@implementation SQPCommentCell
-  (BOOL)canBecomeFirstResponder
{
    return YES;
}
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return NO;
}
- (void)awakeFromNib
{
    UIImageView *bgView = [[UIImageView alloc] init];
    bgView.image = [UIImage imageNamed:@"mainCellBackground"];
    self.backgroundView = bgView;
    // 圆角一般不用layer的方法去实现 而是在图片底层的背景图动手脚，这样不会使得程序卡顿
//    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width * 0.5;
//    self.profileImageView.layer.masksToBounds = YES;
}
- (void)setComment:(SQPComment *)comment
{
    _comment = comment;
    // set头像
    [self.profileImageView setHeader:comment.user.profile_image];
    
    self.sexView.image = [comment.user.sex isEqualToString:SQPUserSexMale] ? [UIImage imageNamed:@"Profile_manIcon"] : [UIImage imageNamed:@"Profile_womanIcon"];
    self.contentLabel.text = comment.content;
    self.usernameLabel.text = comment.user.username;
    self.likeCountLabel.text = [NSString stringWithFormat:@"%zd", comment.like_count];
    
    if (comment.voiceuri.length) {
        self.voiceButton.hidden = NO;
        [self.voiceButton setTitle:[NSString stringWithFormat:@"%zd''", comment.voicetime] forState:UIControlStateNormal];
    } else {
        self.voiceButton.hidden = YES;
    }
}
- (void)setFrame:(CGRect)frame
{
    frame.origin.x = SQPTopicCellMargin;
    frame.size.width -= 2 * SQPTopicCellMargin;
    
    [super setFrame:frame];
}
@end
