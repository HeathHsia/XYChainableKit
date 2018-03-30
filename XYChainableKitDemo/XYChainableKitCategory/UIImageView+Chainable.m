//
//  UIImageView+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIImageView+Chainable.h"

@implementation UIImageView (Chainable)

- (XYImageViewIdChain)XYBackgroundColor
{
    return ^(id backgroundColor){
        if ([backgroundColor isKindOfClass:[UIColor class]]) {
            self.backgroundColor = backgroundColor;
        }
        return self;
    };
}

- (XYImageViewRectChain)XYFrame
{
    return ^(CGRect frame){
        if (!CGRectEqualToRect(self.frame, frame)) {
            self.frame = frame;
        }
        return self;
    };
}

- (XYImageViewPointChain)XYCenter
{
    return ^(CGPoint center){
        if (!CGPointEqualToPoint(self.center, center)) {
            self.center = center;
        }
        return self;
    };
}

- (XYImageViewRectChain)XYBounds
{
    return ^(CGRect bounds){
        if (!CGRectEqualToRect(self.bounds, bounds)) {
            self.bounds = bounds;
        }
        return self;
    };
}

- (XYImageViewIntegerChain)XYTag
{
    return ^(NSInteger tag){
        if (self.tag != tag) {
            self.tag = tag;
        }
        return self;
    };
}

- (XYImageViewTransformChain)XYTransform
{
    return ^(CGAffineTransform transform){
        if (!CGAffineTransformEqualToTransform(self.transform, transform)) {
            self.transform = transform;
        }
        return self;
    };
}

- (XYImageViewBoolChain)XYClipsToBounds
{
    return ^(BOOL clipsToBounds){
        if (self.clipsToBounds != clipsToBounds) {
            self.clipsToBounds = clipsToBounds;
        }
        return self;
    };
}

- (XYImageViewFloatChain)XYAlpha
{
    return ^(CGFloat alpha){
        if (self.alpha != alpha) {
            self.alpha = alpha;
        }
        return self;
    };
}

- (XYImageViewBoolChain)XYHidden
{
    return ^(BOOL hidden){
        if (self.hidden != hidden) {
            self.hidden = hidden;
        }
        return self;
    };
}

- (XYImageViewBoolChain)XYUserInteractionEnabled
{
    return ^(BOOL userInteractionEnabled){
        if (self.userInteractionEnabled != userInteractionEnabled) {
            self.userInteractionEnabled = userInteractionEnabled;
        }
        return self;
    };
}

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


@end
