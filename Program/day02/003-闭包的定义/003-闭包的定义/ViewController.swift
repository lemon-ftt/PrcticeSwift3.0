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
        
        demo()
        
        // 1> 最简单的闭包
        // () -> () 没有参数，没有返回值的函数
        // 如果没有参数、没有返回值，可以省略，连 in 都一起省略
        let b1 = {
            print("hello")
        }
        // 执行闭包
        b1()
        
        // 2> 带参数的闭包
        // 闭包中，参数、返回值、实现代码都是写在 {} 中\
        // 需要使用一个关键字 ‘in’ 分隔定义和实现
        // { 形参列表 -> 返回值类型 in // 实现代码 }
        // (Int) -> ()
        let b2 = { (x: Int) -> () in
            print(x)
        }
        b2(100)
        
        // 3> 带参数 / 返回值的闭包
        // (Int) -> Int
        let b3 = { (x: Int) -> Int in
            return x+250
        }
        print(b3(111))
    }
    
    // 使用常量记录函数的演练
    func demo() {
        print(sum(x: 10, y: 20))
        
        // 1> 定义一个常量记录函数
        // f: (Int, Int) -> Int
        let f = sum
        let i = 10
        let m = sum1
        let a = "成都舒心康宜科技有限公司"
        
        // 2. 在需要的时候执行
        print(f(20, 30))
        print(m(5, 2))
    }
    
    //      (x: Int) -> Int
    func sum(x: Int, y: Int) -> Int {
        return x + y;
    }
    
    func sum1(x: Int, y: Int) -> Int {
        return x * y;
    }
}

