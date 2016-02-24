//
//  UIView+CornerRadius.h
//  UIViewTest
//
//  Created by Artron_LQQ on 16/2/20.
//  Copyright © 2016年 Artup. All rights reserved.
//

/**
 *  @author LQQ, 16-02-20 23:02:40
 *
 *  github地址:https://github.com/LQQZYY/UIViewCornerDemo
 *
 *  喜欢的话就给颗星支持一下,感谢!
 *
 *
 */

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,LQQSideType) {
    kLQQSideTypeTopLine    = 0,
    kLQQSideTypeLeftLine   = 1,
    kLQQSideTypeBottomLine = 2,
    kLQQSideTypeRightLine  = 3,
    
    kLQQSideTypeTopRightCorner  = 4,
    kLQQSideTypeTopLeftCorner  = 5,
    kLQQSideTypeBottomRightCorner  = 6,
    kLQQSideTypeBottomLeftCorner  = 7,
    
    kLQQSideTypeAll    = 8,
};

@interface UIView (CornerRadius)

/**
 *  @author LQQ, 16-02-20 22:02:52
 *
 *  设置不同边的圆角
 *
 *  @param sideType 圆角类型
 *  @param cornerRadius 圆角半径
 */
- (void)cornerSideType:(LQQSideType)sideType withCornerRadius:(CGFloat)cornerRadius;
@end
