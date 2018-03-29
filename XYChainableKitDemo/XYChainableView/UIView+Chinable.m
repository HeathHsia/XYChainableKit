//
//  UIView+Chinable.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "UIView+Chinable.h"

@implementation UIView (Chinable)

- (XYViewIdChina)XYbackgroundColor
{
    return ^(id backgroundColor){
        if ([backgroundColor isKindOfClass:[UIColor class]]) {
            self.backgroundColor = backgroundColor;
        }
        return self;
    };
}

- (XYViewRectChina)XYframe
{
    return ^(CGRect frame){
        if (!CGRectEqualToRect(self.frame, frame)) {
            self.frame = frame;
        }
        return self;
    };
}

- (XYViewPointChina)XYCenter
{
    return ^(CGPoint center){
        if (!CGPointEqualToPoint(self.center, center)) {
            self.center = center;
        }
        return self;
    };
}



@end
