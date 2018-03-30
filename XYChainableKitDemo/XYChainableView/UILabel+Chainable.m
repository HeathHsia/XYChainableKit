//
//  UILabel+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UILabel+Chainable.h"

@implementation UILabel (Chainable)

#pragma mark --- UIView
- (XYLabelIdChain)XYBackgroundColor
{
    return ^(id backgroundColor){
        if ([backgroundColor isKindOfClass:[UIColor class]]) {
            self.backgroundColor = backgroundColor;
        }
        return self;
    };
}

- (XYLabelRectChain)XYFrame
{
    return ^(CGRect frame){
        if (!CGRectEqualToRect(self.frame, frame)) {
            self.frame = frame;
        }
        return self;
    };
}

- (XYLabelPointChain)XYCenter
{
    return ^(CGPoint center){
        if (!CGPointEqualToPoint(self.center, center)) {
            self.center = center;
        }
        return self;
    };
}

- (XYLabelRectChain)XYBounds
{
    return ^(CGRect bounds){
        if (!CGRectEqualToRect(self.bounds, bounds)) {
            self.bounds = bounds;
        }
        return self;
    };
}

- (XYLabelIntegerChain)XYTag
{
    return ^(NSInteger tag){
        if (self.tag != tag) {
            self.tag = tag;
        }
        return self;
    };
}

- (XYLabelTransformChain)XYTransform
{
    return ^(CGAffineTransform transform){
        if (!CGAffineTransformEqualToTransform(self.transform, transform)) {
            self.transform = transform;
        }
        return self;
    };
}

- (XYLabelBoolChain)XYClipsToBounds
{
    return ^(BOOL clipsToBounds){
        if (self.clipsToBounds != clipsToBounds) {
            self.clipsToBounds = clipsToBounds;
        }
        return self;
    };
}

- (XYLabelFloatChain)XYAlpha
{
    return ^(CGFloat alpha){
        if (self.alpha != alpha) {
            self.alpha = alpha;
        }
        return self;
    };
}

- (XYLabelBoolChain)XYHidden
{
    return ^(BOOL hidden){
        if (self.hidden != hidden) {
            self.hidden = hidden;
        }
        return self;
    };
}

- (XYLabelBoolChain)XYUserInteractionEnabled
{
    return ^(BOOL userInteractionEnabled){
        if (self.userInteractionEnabled != userInteractionEnabled) {
            self.userInteractionEnabled = userInteractionEnabled;
        }
        return self;
    };
}

#pragma mark --- UILabel
- (XYLabelIdChain)XYText
{
    return ^(id text){
        if ([text isKindOfClass:[NSString class]] && ![self.text isEqualToString:text]) {
            self.text = text;
        }
        return self;
    };
}

- (XYLabelIdChain)XYFont
{
    return ^(id font){
        if ([font isKindOfClass:[UIFont class]] && ![self.font isEqual:font]) {
            self.font = font;
        }
        return self;
    };
}

- (XYLabelIdChain)XYTextColor
{
    return ^(id textColor){
        if ([textColor isKindOfClass:[UIColor class]] && ![self.textColor isEqual:textColor]) {
            self.textColor = textColor;
        }
        return self;
    };
}

- (XYLabelIntegerChain)XYTextAlignment
{
    return ^(NSInteger textAlignment){
        if (self.textAlignment != textAlignment) {
            self.textAlignment = textAlignment;
        }
        return self;
    };
}

- (XYLabelIntegerChain)XYNumberOfLines
{
    return ^(NSInteger numberOfLines){
        if (self.numberOfLines != numberOfLines) {
            self.numberOfLines = numberOfLines;
        }
        return self;
    };
}


@end
