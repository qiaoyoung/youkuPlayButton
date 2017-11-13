//
//  YouKuPlayButton.h
//  youkuAnimation_Test
//
//  Created by 乔杨 on 2017/11/13.
//  Copyright © 2017年 Joeyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,YouKuPlayButtonState) {
    YouKuPlayButtonStatePause = 0,
    YouKuPlayButtonStatePlay
};

@interface YouKuPlayButton : UIButton

/**
 通过setter方式控制按钮动画
 设置XLPlayButtonStatePlay显示播放按钮
 设置XLPlayButtonStatePause显示暂停按钮
 */
@property (nonatomic, assign) YouKuPlayButtonState buttonState;

/**
 创建方法
 */
- (instancetype)initWithFrame:(CGRect)frame state:(YouKuPlayButtonState)state;


@end
