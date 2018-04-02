//
//  UILabel+Chainable.h
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef UILabel *(^XYLabelIdChain)(id);
typedef UILabel *(^XYLabelPointChain)(CGPoint);
typedef UILabel *(^XYLabelIntegerChain)(NSInteger);
typedef UILabel *(^XYLabelTransformChain)(CGAffineTransform);
typedef UILabel *(^XYLabelBoolChain)(BOOL);
typedef UILabel *(^XYLabelFloatChain)(CGFloat);
typedef UILabel *(^XYLabelRectChain)(CGRect);

@interface UILabel (Chainable)

/**
 Set text(NSString)
 */
- (XYLabelIdChain)XYText;

/**
 Set attributedText(NSAttributedString)
 */
- (XYLabelIdChain)XYAttributedText;

/**
 Set font(UIFont)
 */
- (XYLabelIdChain)XYFont;

/**
 Set textColor(UIColor)
 */
- (XYLabelIdChain)XYTextColor;

/**
 Set textAlignment(NSTextAlignment)
 */
- (XYLabelIntegerChain)XYTextAlignment;

/**
 Set numberOfLines(NSInteger)
 */
- (XYLabelIntegerChain)XYNumberOfLines;

- (XYLabelIdChain)XYBackgroundColor;
- (XYLabelRectChain)XYFrame;
- (XYLabelPointChain)XYCenter;
- (XYLabelRectChain)XYBounds;
- (XYLabelIntegerChain)XYTag;
- (XYLabelTransformChain)XYTransform;
- (XYLabelBoolChain)XYClipsToBounds;
- (XYLabelFloatChain)XYAlpha;
- (XYLabelBoolChain)XYHidden;
- (XYLabelBoolChain)XYUserInteractionEnabled;

@end
