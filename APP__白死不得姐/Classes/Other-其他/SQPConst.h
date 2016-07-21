
#import <UIKit/UIKit.h>

typedef enum {
    SQPTopicTypeAll = 1,
    SQPTopicTypePicture = 10,
    SQPTopicTypeWord = 29,
    SQPTopicTypeVoice = 31,
    SQPTopicTypeVideo = 41
} SQPTopicType;

/** 精华-顶部标题的高度 */
UIKIT_EXTERN CGFloat const SQPTitilesViewH;
/** 精华-顶部标题的Y */
UIKIT_EXTERN CGFloat const SQPTitilesViewY;

/** 精华-cell-间距 */
UIKIT_EXTERN CGFloat const SQPTopicCellMargin;
/** 精华-cell-文字内容的Y值 */
UIKIT_EXTERN CGFloat const SQPTopicCellTextY;
/** 精华-cell-底部工具条的高度 */
UIKIT_EXTERN CGFloat const SQPTopicCellBottomBarH;

/** 精华-cell-图片帖子的最大高度 */
UIKIT_EXTERN CGFloat const SQPTopicCellPictureMaxH;
/** 精华-cell-图片帖子一旦超过最大高度,就是用Break */
UIKIT_EXTERN CGFloat const SQPTopicCellPictureBreakH;

/** XMGUser模型-性别属性值 */
UIKIT_EXTERN NSString * const SQPUserSexMale;
UIKIT_EXTERN NSString * const SQPUserSexFemale;

/** 精华-cell-最热评论标题的高度 */
UIKIT_EXTERN CGFloat const SQPTopicCellTopCmtTitleH;

/** tabBar被选中的通知 */
UIKIT_EXTERN NSString * const SQPTabBarDidSelectNotification;
/** tabBar被选中的通知 -被选中的控制器的index key */
UIKIT_EXTERN NSString * const SQPSelectedControllerIndexKey;
/** tabBar被选中的通知 -被选中的控制器 key */
UIKIT_EXTERN NSString * const SQPSelectedControllerKey;
