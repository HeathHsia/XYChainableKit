//
//  UIButton+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIButton+Chainable.h"

@implementation UIButton (Chainable)

#pragma mark --- UIView
- (XYButtonIdChain)XYBackgroundColor
{
    return ^(id backgroundColor){
        if ([backgroundColor isKindOfClass:[UIColor class]]) {
            self.backgroundColor = backgroundColor;
        }
        return self;
    };
}

- (XYButtonRectChain)XYFrame
{
    return ^(CGRect frame){
        if (!CGRectEqualToRect(self.frame, frame)) {
            self.frame = frame;
        }
        return self;
    };
}

- (XYButtonPointChain)XYCenter
{
    return ^(CGPoint center){
        if (!CGPointEqualToPoint(self.center, center)) {
            self.center = center;
        }
        return self;
    };
}

- (XYButtonRectChain)XYBounds
{
    return ^(CGRect bounds){
        if (!CGRectEqualToRect(self.bounds, bounds)) {
            self.bounds = bounds;
        }
        return self;
    };
}

- (XYButtonIntegerChain)XYTag
{
    return ^(NSInteger tag){
        if (self.tag != tag) {
            self.tag = tag;
        }
        return self;
    };
}

- (XYButtonTransformChain)XYTransform
{
    return ^(CGAffineTransform transform){
        if (!CGAffineTransformEqualToTransform(self.transform, transform)) {
            self.transform = transform;
        }
        return self;
    };
}

- (XYButtonBoolChain)XYClipsToBounds
{
    return ^(BOOL clipsToBounds){
        if (self.clipsToBounds != clipsToBounds) {
            self.clipsToBounds = clipsToBounds;
        }
        return self;
    };
}

- (XYButtonFloatChain)XYAlpha
{
    return ^(CGFloat alpha){
        if (self.alpha != alpha) {
            self.alpha = alpha;
        }
        return self;
    };
}

- (XYButtonBoolChain)XYHidden
{
    return ^(BOOL hidden){
        if (self.hidden != hidden) {
            self.hidden = hidden;
        }
        return self;
    };
}

- (XYButtonBoolChain)XYUserInteractionEnabled
{
    return ^(BOOL userInteractionEnabled){
        if (self.userInteractionEnabled != userInteractionEnabled) {
            self.userInteractionEnabled = userInteractionEnabled;
        }
        return self;
    };
}

#pragma mark UIButton
- (XYButtonEdgeInsetsChain)titleEdgeInsets
{
    return ^(UIEdgeInsets edgeInsets){
        if (!UIEdgeInsetsEqualToEdgeInsets(self.titleEdgeInsets, edgeInsets)) {
            self.titleEdgeInsets = edgeInsets;
        }
        return self;
    };
}

- (XYButtonEdgeInsetsChain)imageEdgeInsets
{
    return ^(UIEdgeInsets imageEdgeInsets){
        if (!UIEdgeInsetsEqualToEdgeInsets(self.imageEdgeInsets, imageEdgeInsets)) {
            self.imageEdgeInsets = imageEdgeInsets;
        }
        return self;
    };
}

- (XYButtonIdChain)tintColor
{
    return ^(id tintColor){
        if ([tintColor isKindOfClass:[UIColor class]]) {
            self.tintColor = tintColor;
        }
        return self;
    };
}

- (XYButtonIdIntegerChain)XYTitleForState
{
    return ^(id text, NSInteger controlState){
        if ([text isKindOfClass:[NSString class]]) {
            [self setTitle:text forState:controlState];
        }
        return self;
    };
}

@end
