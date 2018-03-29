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

@interface UIView (Chainable)

- (XYViewIdChain)XYBackgroundColor;
- (XYViewRectChain)XYFrame;
- (XYViewPointChain)XYCenter;
- (XYViewRectChain)XYBounds;
- (XYViewIntegerChain)XYTag;
- (XYViewTransformChain)XYTransform;

@end
