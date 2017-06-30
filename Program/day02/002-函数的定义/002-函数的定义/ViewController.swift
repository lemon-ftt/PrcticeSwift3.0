//
//  ViewController.swift
//  002-函数的定义
//
//  Created by tan on 2017/6/14.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sum(x: 10, y: 50))
        
        // 外部参数测试
        print(sum1(num1: 20, num2: 60))
        print(sum2(30, 50))
        
        // 测试默认值
        print(sum3())
        print(sum3(x: 20, y: 80))
        print(sum3(x: 20))
        print(sum3(y: 80))
        
        demo1()
        demo2()
        demo3()
    }
    
    // MARK: - 外部参数
    /// - 外部参数就是在 形参前加一个名字
    /// - 外部参数不会影响函数内部的细节
    /// - 外部参数会让外部调用方看起来更加的直观
    /// - 外部参数如果使用 _,在外部调用函数时,,会忽略形参的名字
    func sum2(_ x: Int, _ y: Int) -> Int {
        
        // 在 Swift 中,_ 就是可以忽略任意不感兴趣的内容
        // Immutable value 'i' was never used; consider replacing with '_' or removing it
        // i 从来没有被用到,建议使用 _ 替代
        // for i in 0..<10
        for _ in 0..<10 {
            print("hello world")
        }
        
        return x + y
    }
    
    func sum1(num1 x: Int, num2 y: Int) -> Int {
        return x + y
    }

    // MARK: - 函数定义
    /// 函数定义  格式: 函数名(形参列表) -> 返回值类型
    ///
    /// - Parameters:
    ///   - x: <#x description#>
    ///   - y: <#y description#>
    /// - Returns: <#return value description#>
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
    
    // MARK: - 默认值
    // 通过给参数设置默认值,在调用的时候,可以任意组合参数,如果不指定的,就使用默认值
    // OC 中需要定义很多的方法,以及方法的实现,最终调用包含所有参数的那个函数
    func sum3(x: Int = 1 ,y: Int = 2) -> Int {
        return x + y
    }

    // MARK: - 无返回值
    /**
     知道就行,主要用在闭包  在阅读第三方框架代码时,保证能够看懂!
     
     - 直接省略
     - ()
     - void
     */
    func demo1() {
        print("哈哈")
    }
    
    func demo2() -> () {
        print("呵呵")
    }
    func demo3() -> Void {
        print("嘻嘻")
    }

}

