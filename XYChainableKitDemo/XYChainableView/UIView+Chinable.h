//
//  UIView+Chinable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UIView *(^XYViewIdChina)(id);
typedef UIView *(^XYViewRectChina)(CGRect);
typedef UIView *(^XYViewPointChina)(CGPoint);

@interface UIView (Chinable)

- (XYViewIdChina)XYbackgroundColor;
- (XYViewRectChina)XYframe;
- (XYViewPointChina)XYCenter;

@end
