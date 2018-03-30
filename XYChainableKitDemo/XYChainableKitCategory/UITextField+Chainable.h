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

- (XYTextFieldIdChain)XYText;
- (XYTextFieldIdChain)XYAttributedText;
- (XYTextFieldIdChain)XYTextColor;
- (XYTextFieldIdChain)XYFont;
- (XYTextFieldIntegerChain)XYTextAlignment;
- (XYTextFieldIntegerChain)XYBorderStyle;
- (XYTextFieldIdChain)XYPlaceholder;
- (XYTextFieldIdChain)XYAttributedPlaceholder;
- (XYTextFieldBoolChain)XYClearsOnBeginEditing;
- (XYTextFieldIdChain)XYBackground;
- (XYTextFieldIdChain)XYDisabledBackground;
- (XYTextFieldIntegerChain)XYClearButtonMode;
- (XYTextFieldIdChain)XYLeftView;
- (XYTextFieldIntegerChain)XYLeftViewMode;
- (XYTextFieldIdChain)XYRightView;
- (XYTextFieldIntegerChain)XYRightViewMode;
- (XYTextFieldIdChain)XYInputView;
- (XYTextFieldIdChain)XYInputAccessoryView;
- (XYTextFieldBoolChain)XYClearsOnInsertion;

@end
