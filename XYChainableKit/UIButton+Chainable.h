//
//  UIButton+Chainable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIButton *(^XYButtonIdChain)(id);
typedef UIButton *(^XYButtonIdIntegerChain)(id, NSInteger);
typedef UIButton *(^XYButtonPointChain)(CGPoint);
typedef UIButton *(^XYButtonIntegerChain)(NSInteger);
typedef UIButton *(^XYButtonTransformChain)(CGAffineTransform);
typedef UIButton *(^XYButtonBoolChain)(BOOL);
typedef UIButton *(^XYButtonFloatChain)(CGFloat);
typedef UIButton *(^XYButtonRectChain)(CGRect);
typedef UIButton *(^XYButtonEdgeInsetsChain)(UIEdgeInsets);

@interface UIButton (Chainable)


/**
 Set tintColor(UIColor)
 */
- (XYButtonIdChain)XYTintColor;

/**
 Set titleEdgeInsets(UIEdgeInsets)
 */
- (XYButtonEdgeInsetsChain)XYTitleEdgeInsets;

/**
 Set imageEdgeInsets(UIEdgeInsets)
 */
- (XYButtonEdgeInsetsChain)XYImageEdgeInsets;

/**
 Set titleForState(NSString, UIControlState)
 */
- (XYButtonIdIntegerChain)XYTitleForState;

/**
 Set titleColorForState(UIColor, UIControlState)
 */
- (XYButtonIdIntegerChain)XYTitleColorForState;

/**
 Set imageForState(UIImage, UIControlState)
 */
- (XYButtonIdIntegerChain)XYImageForState;

/**
 Set backgroundImageForState(UIImage, UIControlState)
 */
- (XYButtonIdIntegerChain)XYBackgroundImageForState;

/**
 Set attributedTitleForState(NSAttributedString, UIControlState)
 */
- (XYButtonIdIntegerChain)XYAttributedTitleForState;


- (XYButtonIdChain)XYBackgroundColor;
- (XYButtonRectChain)XYFrame;
- (XYButtonPointChain)XYCenter;
- (XYButtonRectChain)XYBounds;
- (XYButtonIntegerChain)XYTag;
- (XYButtonTransformChain)XYTransform;
- (XYButtonBoolChain)XYClipsToBounds;
- (XYButtonFloatChain)XYAlpha;
- (XYButtonBoolChain)XYHidden;
- (XYButtonBoolChain)XYUserInteractionEnabled;


@end
