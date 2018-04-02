//
//  UILabel+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UILabel+Chainable.h"
#import "UIView+Chainable.h"

@implementation UILabel (Chainable)

#pragma mark --- Label
- (XYLabelIdChain)XYText
{
    return ^(id text){
        if ([text isKindOfClass:[NSString class]] && ![self.text isEqualToString:text]) {
            self.text = text;
        }
        return self;
    };
}

- (XYLabelIdChain)XYAttributedText
{
    return ^(id attributedText){
        if ([attributedText isKindOfClass:[NSAttributedString class]]) {
            self.attributedText = attributedText;
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

#pragma mark --- View
- (XYLabelIdChain)XYBackgroundColor
{
    return (XYLabelIdChain) [super XYBackgroundColor];
}

- (XYLabelRectChain)XYFrame
{
    return (XYLabelRectChain) [super XYFrame];
}

- (XYLabelPointChain)XYCenter
{
    return (XYLabelPointChain) [super XYCenter];
}

- (XYLabelRectChain)XYBounds
{
    return (XYLabelRectChain) [super XYBounds];
}

- (XYLabelIntegerChain)XYTag
{
    return (XYLabelIntegerChain) [super XYTag];
}

- (XYLabelTransformChain)XYTransform
{
    return (XYLabelTransformChain) [super XYTransform];
}

- (XYLabelBoolChain)XYClipsToBounds
{
    return (XYLabelBoolChain) [super XYClipsToBounds];
}

- (XYLabelFloatChain)XYAlpha
{
    return (XYLabelFloatChain) [super XYAlpha];
}

- (XYLabelBoolChain)XYHidden
{
    return (XYLabelBoolChain) [super XYHidden];
}

- (XYLabelBoolChain)XYUserInteractionEnabled
{
    return (XYLabelBoolChain) [super XYUserInteractionEnabled];
}



@end
