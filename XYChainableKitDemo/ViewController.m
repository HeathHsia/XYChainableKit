//
//  ViewController.m
//  XYChainableKit
//
//  Created by FireHsia on 2018/3/29.
//  Copyright © 2018年 FireHsia. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Chinable.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UIView *view = [[UIView alloc] init];
    view.XYbackgroundColor([UIColor redColor]).XYframe(CGRectMake(100, 100, 100, 100));
    [self.view addSubview:view];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
