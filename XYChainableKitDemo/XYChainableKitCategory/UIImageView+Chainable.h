//
//  UIImageView+Chainable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/30.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIImageView *(^XYImageViewIdChain)(id);
typedef UIImageView *(^XYImageViewPointChain)(CGPoint);
typedef UIImageView *(^XYImageViewIntegerChain)(NSInteger);
typedef UIImageView *(^XYImageViewTransformChain)(CGAffineTransform);
typedef UIImageView *(^XYImageViewBoolChain)(BOOL);
typedef UIImageView *(^XYImageViewFloatChain)(CGFloat);
typedef UIImageView *(^XYImageViewRectChain)(CGRect);

@interface UIImageView (Chainable)

/**
 Set image(UIImage)
 */
- (XYImageViewIdChain)XYImage;

/**
 Set highlightedImage(UIImage)
 */
- (XYImageViewIdChain)XYHighlightedImage;

/**
 Set highlighted(BOOL)
 */
- (XYImageViewBoolChain)XYHighlighted;

/**
 Set animationImages(NSArray<UIImage>)
 */
- (XYImageViewIdChain)XYAnimationImages;

/**
 Set highlightedAnimationImages(NSArray<UIImage>)
 */
- (XYImageViewIdChain)XYHighlightedAnimationImages;

/**
 Set animationDuration(CGFloat)
 */
- (XYImageViewFloatChain)XYAnimationDuration;

/**
 Set animationRepeatCount(NSInteger)
 */
- (XYImageViewIntegerChain)XYAnimationRepeatCount;


- (XYImageViewIdChain)XYBackgroundColor;
- (XYImageViewRectChain)XYFrame;
- (XYImageViewPointChain)XYCenter;
- (XYImageViewRectChain)XYBounds;
- (XYImageViewIntegerChain)XYTag;
- (XYImageViewTransformChain)XYTransform;
- (XYImageViewBoolChain)XYClipsToBounds;
- (XYImageViewFloatChain)XYAlpha;
- (XYImageViewBoolChain)XYHidden;
- (XYImageViewBoolChain)XYUserInteractionEnabled;





@end
