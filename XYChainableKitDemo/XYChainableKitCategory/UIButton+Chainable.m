//
//  UIButton+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIButton+Chainable.h"
#import "UIView+Chainable.h"

@implementation UIButton (Chainable)

#pragma mark Button
- (XYButtonEdgeInsetsChain)XYTitleEdgeInsets
{
    return ^(UIEdgeInsets edgeInsets){
        if (!UIEdgeInsetsEqualToEdgeInsets(self.titleEdgeInsets, edgeInsets)) {
            self.titleEdgeInsets = edgeInsets;
        }
        return self;
    };
}

- (XYButtonEdgeInsetsChain)XYImageEdgeInsets
{
    return ^(UIEdgeInsets imageEdgeInsets){
        if (!UIEdgeInsetsEqualToEdgeInsets(self.imageEdgeInsets, imageEdgeInsets)) {
            self.imageEdgeInsets = imageEdgeInsets;
        }
        return self;
    };
}

- (XYButtonIdChain)XYTintColor
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
    return ^(id title, NSInteger controlState){
        if ([title isKindOfClass:[NSString class]]) {
            [self setTitle:title forState:controlState];
        }
        return self;
    };
}
- (XYButtonIdIntegerChain)XYTitleColorForState
{
    return ^(id titleColor, NSInteger controlState){
        if ([titleColor isKindOfClass:[UIColor class]]) {
            [self setTitleColor:titleColor forState:controlState];
        }
        return self;
    };
}

- (XYButtonIdIntegerChain)XYImageForState
{
    return ^(id image, NSInteger controlState){
        if ([image isKindOfClass:[UIImage class]]) {
            [self setImage:image forState:controlState];
        }
        return self;
    };
}

- (XYButtonIdIntegerChain)XYBackgroundImageForState
{
    return ^(id backgroundImage, NSInteger controlState){
        if ([backgroundImage isKindOfClass:[UIImage class]]) {
            [self setBackgroundImage:backgroundImage forState:controlState];
        }
        return self;
    };
}

- (XYButtonIdIntegerChain)XYAttributedTitleForState
{
    return ^(id attributedTitle, NSInteger controlState){
        if ([attributedTitle isKindOfClass:[NSAttributedString class]]) {
            [self setAttributedTitle:attributedTitle forState:controlState];
        }
        return self;
    };
}

#pragma mark --- View
- (XYButtonIdChain)XYBackgroundColor
{
    return (XYButtonIdChain) [super XYBackgroundColor];
}

- (XYButtonRectChain)XYFrame
{
    return (XYButtonRectChain) [super XYFrame];
}

- (XYButtonPointChain)XYCenter
{
    return (XYButtonPointChain) [super XYCenter];
}

- (XYButtonRectChain)XYBounds
{
    return (XYButtonRectChain) [super XYBounds];
}

- (XYButtonIntegerChain)XYTag
{
    return (XYButtonIntegerChain) [super XYTag];
}

- (XYButtonTransformChain)XYTransform
{
    return (XYButtonTransformChain) [super XYTransform];
}

- (XYButtonBoolChain)XYClipsToBounds
{
    return (XYButtonBoolChain) [super XYClipsToBounds];
}

- (XYButtonFloatChain)XYAlpha
{
    return (XYButtonFloatChain) [super XYAlpha];
}

- (XYButtonBoolChain)XYHidden
{
    return (XYButtonBoolChain) [super XYHidden];
}

- (XYButtonBoolChain)XYUserInteractionEnabled
{
    return (XYButtonBoolChain) [super XYUserInteractionEnabled];
}


@end
