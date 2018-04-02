//
//  UIView+Chinable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIView *(^XYViewIdChain)(id);
typedef UIView *(^XYViewRectChain)(CGRect);
typedef UIView *(^XYViewPointChain)(CGPoint);
typedef UIView *(^XYViewIntegerChain)(NSInteger);
typedef UIView *(^XYViewTransformChain)(CGAffineTransform);
typedef UIView *(^XYViewBoolChain)(BOOL);
typedef UIView *(^XYViewFloatChain)(CGFloat);

@interface UIView (Chainable)

/**
 Set backgroundColor(UIColor)
 */
- (XYViewIdChain)XYBackgroundColor;

/**
 Set frame(CGRect)
 */
- (XYViewRectChain)XYFrame;

/**
 Set center(CGPoint)
 */
- (XYViewPointChain)XYCenter;

/**
 Set bounds(CGRect)
 */
- (XYViewRectChain)XYBounds;

/**
 Set tag(NSInteger)
 */
- (XYViewIntegerChain)XYTag;

/**
 Set transform(CGAffineTransform)
 */
- (XYViewTransformChain)XYTransform;

/**
 Set clipsToBounds(Bool)
 */
- (XYViewBoolChain)XYClipsToBounds;

/**
 Set alpha(CGFloat)
 */
- (XYViewFloatChain)XYAlpha;

/**
 Set hidden(Bool)
 */
- (XYViewBoolChain)XYHidden;

/**
 Set userInteractionEnabled(Bool)
 */
- (XYViewBoolChain)XYUserInteractionEnabled;

@end
