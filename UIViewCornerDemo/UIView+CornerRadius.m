//
//  UIView+CornerRadius.m
//  UIViewTest
//
//  Created by Artron_LQQ on 16/2/20.
//  Copyright © 2016年 Artup. All rights reserved.
//

#import "UIView+CornerRadius.h"

@implementation UIView (CornerRadius)

- (void)LQQSetCornerWithSideType:(LQQSideType)sideType cornerRadius:(CGFloat)cornerRadius
{
    
    CGSize cornerSize = CGSizeMake(cornerRadius,cornerRadius);
    UIBezierPath *maskPath;
    
    switch (sideType) {
        case kLQQSideTypeTopLine: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:(UIRectCornerTopLeft|UIRectCornerTopRight)
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeLeftLine: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:(UIRectCornerTopLeft|UIRectCornerBottomLeft)
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeBottomLine: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:(UIRectCornerBottomLeft|UIRectCornerBottomRight)
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeRightLine: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:(UIRectCornerTopRight|UIRectCornerBottomRight)
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeTopLeftCorner: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerTopLeft
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeTopRightCorner: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerTopRight
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeBottomLeftCorner: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerBottomLeft
                                                   cornerRadii:cornerSize];
            break;
        }
            
        case kLQQSideTypeBottomRightCorner: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerBottomRight
                                                   cornerRadii:cornerSize];
            break;
        }
            
        default: {
            maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                             byRoundingCorners:UIRectCornerAllCorners
                                                   cornerRadii:cornerSize];
            break;
        }
    }
    
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    
    // Set the newly created shape layer as the mask for the image view's layer
    self.layer.mask = maskLayer;
    [self.layer setMasksToBounds:YES];
}

@end
