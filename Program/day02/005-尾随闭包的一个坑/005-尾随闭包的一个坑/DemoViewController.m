//
//  DemoViewController.m
//  005-尾随闭包的一个坑
//
//  Created by 范坛 on 2017/9/5.
//  Copyright © 2017年 范坛. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *l = [[UILabel alloc]init];
    [self.view addSubview:l];
    
    // 区分变量的作用域
    {
    UILabel *l = [[UILabel alloc]init];
    [self.view addSubview:l];
    }
    
}


@end
