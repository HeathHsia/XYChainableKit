//
//  ViewController.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Chainable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    view.XYBackgroundColor([UIColor redColor]).XYFrame(CGRectMake(100, 100, 100, 100)).XYTag(1000);
    [self.view addSubview:view];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
