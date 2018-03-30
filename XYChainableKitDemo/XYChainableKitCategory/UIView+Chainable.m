//
//  UIView+Chinable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIView+Chainable.h"

@implementation UIView (Chainable)

- (XYViewIdChain)XYBackgroundColor
{
    return ^(id backgroundColor){
        if ([backgroundColor isKindOfClass:[UIColor class]]) {
            self.backgroundColor = backgroundColor;
        }
        return self;
    };
}

- (XYViewRectChain)XYFrame
{
    return ^(CGRect frame){
        if (!CGRectEqualToRect(self.frame, frame)) {
            self.frame = frame;
        }
        return self;
    };
}

- (XYViewPointChain)XYCenter
{
    return ^(CGPoint center){
        if (!CGPointEqualToPoint(self.center, center)) {
            self.center = center;
        }
        return self;
    };
}

- (XYViewRectChain)XYBounds
{
    return ^(CGRect bounds){
        if (!CGRectEqualToRect(self.bounds, bounds)) {
            self.bounds = bounds;
        }
        return self;
    };
}

- (XYViewIntegerChain)XYTag
{
    return ^(NSInteger tag){
        if (self.tag != tag) {
            self.tag = tag;
        }
        return self;
    };
}

- (XYViewTransformChain)XYTransform
{
    return ^(CGAffineTransform transform){
        if (!CGAffineTransformEqualToTransform(self.transform, transform)) {
          self.transform = transform;
        }
        return self;
    };
}

- (XYViewBoolChain)XYClipsToBounds
{
    return ^(BOOL clipsToBounds){
        if (self.clipsToBounds != clipsToBounds) {
            self.clipsToBounds = clipsToBounds;
        }
        return self;
    };
}

- (XYViewFloatChain)XYAlpha
{
    return ^(CGFloat alpha){
        if (self.alpha != alpha) {
            self.alpha = alpha;
        }
        return self;
    };
}

- (XYViewBoolChain)XYHidden
{
    return ^(BOOL hidden){
        if (self.hidden != hidden) {
            self.hidden = hidden;
        }
        return self;
    };
}


- (XYViewBoolChain)XYUserInteractionEnabled
{
    return ^(BOOL userInteractionEnabled){
        if (self.userInteractionEnabled != userInteractionEnabled) {
            self.userInteractionEnabled = userInteractionEnabled;
        }
        return self;
    };
}




@end
