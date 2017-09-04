//
//  DemoViewController.m
//  003-闭包的定义
//
//  Created by 范坛 on 2017/9/4.
//  Copyright © 2017年 tantan. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 最简单的 block
    void (^b1)() = ^{
        NSLog(@"hello");
    };
    
    b1();
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
