//
//  ViewController.swift
//  003-闭包的定义
//
//  Created by tan on 2017/6/19.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /**
     闭包
     1. 提前准备好的代码
     2. 在需要的时候执行
     3. 可以当做参数传递
     */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print(sum(x: 10, y: 20))
        
        // 1> 定义一个常量记录函数
        // f: (Int, Int) -> Int
        let f = sum
        let i = 10
        let m = sum1
        
        // 2. 在需要的时候执行
        print(f(20, 30))
        print(m(5, 2))
        
    }
    
    func sum(x: Int, y: Int) -> Int {
        return x + y;
    }
    
    func sum1(x: Int, y: Int) -> Int {
        return x * y;
    }
}

