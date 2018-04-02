//
//  UIImageView+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIImageView+Chainable.h"
#import "UIView+Chainable.h"

@implementation UIImageView (Chainable)

#pragma mark --- ImageView
- (XYImageViewIdChain)XYImage
{
    return ^(id image){
        if ([image isKindOfClass:[UIImage class]]) {
            self.image = image;
        }
        return self;
    };
}

- (XYImageViewIdChain)XYHighlightedImage
{
    return ^(id highlightedImage){
        if ([highlightedImage isKindOfClass:[UIImage class]]) {
            self.highlightedImage = highlightedImage;
        }
        return self;
    };
}

- (XYImageViewBoolChain)XYHighlighted
{
    return ^(BOOL highlighted){
        if (self.highlighted != highlighted) {
            self.highlighted = highlighted;
        }
        return self;
    };
}

- (XYImageViewIdChain)XYAnimationImages
{
    return ^(id animationImages){
        if ([animationImages isKindOfClass:[NSArray class]]) {
            self.animationImages = animationImages;
        }
        return self;
    };
}


- (XYImageViewIdChain)XYHighlightedAnimationImages
{
    return ^(id highlightedAnimationImages){
        if ([highlightedAnimationImages isKindOfClass:[NSArray class]]) {
            self.highlightedAnimationImages = highlightedAnimationImages;
        }
        return self;
    };
}


- (XYImageViewFloatChain)XYAnimationDuration
{
    return ^(CGFloat animationDuration){
        if (self.animationDuration != animationDuration) {
            self.animationDuration = animationDuration;
        }
        return self;
    };
}


- (XYImageViewIntegerChain)XYAnimationRepeatCount
{
    return ^(NSInteger animationRepeatCount){
        if (self.animationRepeatCount != animationRepeatCount) {
            self.animationRepeatCount = animationRepeatCount;
        }
        return self;
    };
}


#pragma mark --- View
- (XYImageViewIdChain)XYBackgroundColor
{
    return (XYImageViewIdChain) [super XYBackgroundColor];
}

- (XYImageViewRectChain)XYFrame
{
    return (XYImageViewRectChain) [super XYFrame];
}

- (XYImageViewPointChain)XYCenter
{
    return (XYImageViewPointChain) [super XYCenter];
}

- (XYImageViewRectChain)XYBounds
{
    return (XYImageViewRectChain) [super XYBounds];
}

- (XYImageViewIntegerChain)XYTag
{
    return (XYImageViewIntegerChain) [super XYTag];
}

- (XYImageViewTransformChain)XYTransform
{
    return (XYImageViewTransformChain) [super XYTransform];
}

- (XYImageViewBoolChain)XYClipsToBounds
{
    return (XYImageViewBoolChain) [super XYClipsToBounds];
}

- (XYImageViewFloatChain)XYAlpha
{
    return (XYImageViewFloatChain) [super XYAlpha];
}

- (XYImageViewBoolChain)XYHidden
{
    return (XYImageViewBoolChain) [super XYHidden];
}

- (XYImageViewBoolChain)XYUserInteractionEnabled
{
    return (XYImageViewBoolChain) [super XYUserInteractionEnabled];
}

@end
