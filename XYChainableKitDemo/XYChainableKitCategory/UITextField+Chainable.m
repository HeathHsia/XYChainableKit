//
//  UITextField+Chainable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UITextField+Chainable.h"
#import "UIView+Chainable.h"

@implementation UITextField (Chainable)

#pragma mark --- TextField
- (XYTextFieldIdChain)XYText
{
    return ^(id text){
        if ([text isKindOfClass:[NSString class]] && ![self.text isEqualToString:text]) {
            self.text = text;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYAttributedText
{
    return ^(id attributedText){
        if ([attributedText isKindOfClass:[NSAttributedString class]] && ![self.attributedText isEqualToAttributedString:attributedText]) {
            self.attributedText = attributedText;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYTextColor
{
    return ^(id textColor){
        if ([textColor isKindOfClass:[UIColor class]]) {
            self.textColor = textColor;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYFont
{
    return ^(id font){
        if ([font isKindOfClass:[UIFont class]]) {
            self.font = font;
        }
        return self;
    };
}

- (XYTextFieldIntegerChain)XYTextAlignment
{
    return ^(NSInteger textAlignment){
        if (self.textAlignment != textAlignment) {
            self.textAlignment = textAlignment;
        }
        return self;
    };
}

- (XYTextFieldIntegerChain)XYBorderStyle
{
    return ^(NSInteger borderStyle){
        if (self.borderStyle != borderStyle) {
            self.borderStyle = borderStyle;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYPlaceholder
{
    return ^(id placeholder){
        if ([placeholder isKindOfClass:[NSString class]] && ![self.placeholder isEqualToString:placeholder]) {
            self.placeholder = placeholder;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYAttributedPlaceholder
{
    return ^(id attributedPlaceholder){
        if ([attributedPlaceholder isKindOfClass:[NSAttributedString class]] && ![self.attributedPlaceholder isEqualToAttributedString:attributedPlaceholder]) {
            self.attributedPlaceholder = attributedPlaceholder;
        }
        return self;
    };
}

- (XYTextFieldBoolChain)XYClearsOnBeginEditing
{
    return ^(BOOL clearsOnBeginEditing){
        if (self.clearsOnBeginEditing != clearsOnBeginEditing) {
            self.clearsOnBeginEditing = clearsOnBeginEditing;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYBackground
{
    return ^(id background){
        if ([background isKindOfClass:[UIImage class]]) {
            self.background = background;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYDisabledBackground
{
    return ^(id disabledBackground){
        if ([disabledBackground isKindOfClass:[UIImage class]]) {
            self.disabledBackground = disabledBackground;
        }
        return self;
    };
}

- (XYTextFieldIntegerChain)XYClearButtonMode
{
    return ^(NSInteger clearButtonMode){
        if (self.clearButtonMode != clearButtonMode) {
            self.clearButtonMode = clearButtonMode;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYLeftView
{
    return ^(id leftView){
        if ([leftView isKindOfClass:[UIView class]]) {
            self.leftView = leftView;
        }
        return self;
    };
}

- (XYTextFieldIntegerChain)XYLeftViewMode
{
    return ^(NSInteger leftViewMode){
        if (self.leftViewMode != leftViewMode) {
            self.leftViewMode = leftViewMode;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYRightView
{
    return ^(id rightView){
        if ([rightView isKindOfClass:[UIView class]]) {
            self.rightView = rightView;
        }
        return self;
    };
}

- (XYTextFieldIntegerChain)XYRightViewMode
{
    return ^(NSInteger rightViewMode){
        if (self.rightViewMode != rightViewMode) {
            self.rightViewMode = rightViewMode;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYInputView
{
    return ^(id inputView){
        if ([inputView isKindOfClass:[UIView class]]) {
            self.inputView = inputView;
        }
        return self;
    };
}

- (XYTextFieldIdChain)XYInputAccessoryView
{
    return ^(id inputAccessoryView){
        if ([inputAccessoryView isKindOfClass:[UIView class]]) {
            self.inputAccessoryView = inputAccessoryView;
        }
        return self;
    };
}

- (XYTextFieldBoolChain)XYClearsOnInsertion
{
    return ^(BOOL clearsOnInsertion){
        if (self.clearsOnInsertion != clearsOnInsertion) {
            self.clearsOnInsertion = clearsOnInsertion;
        }
        return self;
    };
}

#pragma mark --- View
- (XYTextFieldIdChain)XYBackgroundColor
{
    return (XYTextFieldIdChain) [super XYBackgroundColor];
}

- (XYTextFieldRectChain)XYFrame
{
    return (XYTextFieldRectChain) [super XYFrame];
}

- (XYTextFieldPointChain)XYCenter
{
    return (XYTextFieldPointChain) [super XYCenter];
}

- (XYTextFieldRectChain)XYBounds
{
    return (XYTextFieldRectChain) [super XYBounds];
}

- (XYTextFieldIntegerChain)XYTag
{
    return (XYTextFieldIntegerChain) [super XYTag];
}

- (XYTextFieldTransformChain)XYTransform
{
    return (XYTextFieldTransformChain) [super XYTransform];
}

- (XYTextFieldBoolChain)XYClipsToBounds
{
    return (XYTextFieldBoolChain) [super XYClipsToBounds];
}

- (XYTextFieldFloatChain)XYAlpha
{
    return (XYTextFieldFloatChain) [super XYAlpha];
}

- (XYTextFieldBoolChain)XYHidden
{
    return (XYTextFieldBoolChain) [super XYHidden];
}

- (XYTextFieldBoolChain)XYUserInteractionEnabled
{
    return (XYTextFieldBoolChain) [super XYUserInteractionEnabled];
}



@end
