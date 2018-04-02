//
//  ViewController.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Chainable.h"
#import "UILabel+Chainable.h"
#import "UIButton+Chainable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    UIView *view = [[UIView alloc] init];
    view.XYBackgroundColor([UIColor redColor]).XYFrame(CGRectMake(100, 100, 100, 100)).XYTag(1000);
    [self.view addSubview:view];
    
    UILabel *label = [[UILabel alloc] init];
    label.XYFrame(CGRectMake(100, 250, 50, 40)).XYText(@"Label Text").XYBackgroundColor([UIColor orangeColor]).XYAlpha(0.3).XYTextAlignment(NSTextAlignmentCenter);
    [self.view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.XYTitleForState(@"按钮标题", UIControlStateNormal).XYBackgroundColor([UIColor orangeColor]).XYFrame(CGRectMake(100, 450, 70, 70)).XYTitleColorForState([UIColor redColor], UIControlStateNormal);
    button.XYFrame(CGRectMake(100, 200, 300, 400)).XYTag(200);
    [self.view addSubview:button];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
