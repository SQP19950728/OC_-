
#import <UIKit/UIKit.h>

/** 精华-顶部标题的高度 */
CGFloat const SQPTitilesViewH = 35;
/** 精华-顶部标题的Y */
CGFloat const SQPTitilesViewY = 64;

/** 精华-cell-间距 */
CGFloat const SQPTopicCellMargin = 10;
/** 精华-cell-文字内容的Y值 */
CGFloat const SQPTopicCellTextY = 55;
/** 精华-cell-底部工具条的高度 */
CGFloat const SQPTopicCellBottomBarH = 35;

/** 精华-cell-图片帖子的最大高度 */
CGFloat const SQPTopicCellPictureMaxH = 1000;
/** 精华-cell-图片帖子一旦超过最大高度,就是用Break */
CGFloat const SQPTopicCellPictureBreakH = 250;

/** XMGUser模型-性别属性值 */
NSString * const SQPUserSexMale = @"m";
NSString * const SQPUserSexFemale = @"f";

/** 精华-cell-最热评论标题的高度 */
CGFloat const SQPTopicCellTopCmtTitleH = 20;
/** tabBar被选中的通知 */
NSString * const SQPTabBarDidSelectNotification = @"SQPTabBarDidSelectNotification";
/** tabBar被选中的通知 -被选中的控制器的index key */
NSString * const SQPSelectedControllerIndexKey = @"SQPSelectedControllerIndexKey";
/** tabBar被选中的通知 -被选中的控制器 key */
NSString * const SQPSelectedControllerKey = @"SQPSelectedControllerKey";