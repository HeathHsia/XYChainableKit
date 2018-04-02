//
//  UITextField+Chainable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UITextField *(^XYTextFieldIdChain)(id);
typedef UITextField *(^XYTextFieldPointChain)(CGPoint);
typedef UITextField *(^XYTextFieldIntegerChain)(NSInteger);
typedef UITextField *(^XYTextFieldTransformChain)(CGAffineTransform);
typedef UITextField *(^XYTextFieldBoolChain)(BOOL);
typedef UITextField *(^XYTextFieldFloatChain)(CGFloat);
typedef UITextField *(^XYTextFieldRectChain)(CGRect);

@interface UITextField (Chainable)


/**
 Set text(NSString)
 */
- (XYTextFieldIdChain)XYText;

/**
 Set attributedText(NSAttributedString)
 */
- (XYTextFieldIdChain)XYAttributedText;

/**
 Set textColor(UIColor)
 */
- (XYTextFieldIdChain)XYTextColor;

/**
 Set font(UIFont)
 */
- (XYTextFieldIdChain)XYFont;

/**
 Set textAlignment(NSTextAlignment)
 */
- (XYTextFieldIntegerChain)XYTextAlignment;

/**
 Set borderStyle(UITextBorderStyle)
 */
- (XYTextFieldIntegerChain)XYBorderStyle;

/**
 Set placeholder(NSString)
 */
- (XYTextFieldIdChain)XYPlaceholder;

/**
 Set attributedPlaceholder(NSAttributedString)
 */
- (XYTextFieldIdChain)XYAttributedPlaceholder;

/**
 Set clearsOnBeginEditing(BOOL)
 */
- (XYTextFieldBoolChain)XYClearsOnBeginEditing;

/**
 Set background(UIImage)
 */
- (XYTextFieldIdChain)XYBackground;

/**
 Set disabledBackground(UIImage)
 */
- (XYTextFieldIdChain)XYDisabledBackground;

/**
 Set clearButtonMode(UITextFieldViewMode)
 */
- (XYTextFieldIntegerChain)XYClearButtonMode;

/**
 Set leftView(UIView)
 */
- (XYTextFieldIdChain)XYLeftView;

/**
 Set leftViewMode(UITextFieldViewMode)
 */
- (XYTextFieldIntegerChain)XYLeftViewMode;

/**
 Set rightView(UIView)
 */
- (XYTextFieldIdChain)XYRightView;

/**
 Set rightViewMode(UITextFieldViewMode)
 */
- (XYTextFieldIntegerChain)XYRightViewMode;

/**
 Set inputView(UIView)
 */
- (XYTextFieldIdChain)XYInputView;

/**
 Set inputAccessoryView(UIView)
 */
- (XYTextFieldIdChain)XYInputAccessoryView;

/**
 Set clearsOnInsertion(BOOL)
 */
- (XYTextFieldBoolChain)XYClearsOnInsertion;


- (XYTextFieldIdChain)XYBackgroundColor;
- (XYTextFieldRectChain)XYFrame;
- (XYTextFieldPointChain)XYCenter;
- (XYTextFieldRectChain)XYBounds;
- (XYTextFieldIntegerChain)XYTag;
- (XYTextFieldTransformChain)XYTransform;
- (XYTextFieldBoolChain)XYClipsToBounds;
- (XYTextFieldFloatChain)XYAlpha;
- (XYTextFieldBoolChain)XYHidden;
- (XYTextFieldBoolChain)XYUserInteractionEnabled;


@end
