//
//  ViewController.swift
//  Swift3.0-003-变量和常量
//
//  Created by tan on 2017/2/13.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo2()
        let str1 = "hello"
        let str2 = "world"
        let str3 = str1 + str2
        let str4 = "\(str1) \(str2)"
        print(str3)
        print(str4)
        
    }
    
    func demo2() {
        
        // 如果需要指定变量/常量的类型，也可以直接使用 let a: 类型 = 值
        // 提示：在 Swift 开发中，极少使用直接指定类型，通常都是自动推导！
        let a: Double = 10
        let b = 100.5
        
        print(a + b)       
        
    }

    func demo() {
        
        // 1. 定义变量 var，定义之后，可以修改
        //    常量    let，定义之后，不能修改
        // 2. 自动推导，变量/常量的类型会根据右侧的代码执行结果，推到对应的类型
        //    热键：option + click
        // 3. 在 swift 中对类型异常严格
        //    任何不同类型的数据之间，不允许直接运算
        //    不会做默认的隐式转换
        // 4. Swift 中，不存在基本数据类型，都是结构体
        var x = 10
        x = 20
        
        let y = 10.5
//        print(x + y)
        // 1. 将 y 转换成整数
        //    OC 中的写法（int）y => 类型转换
        //    Swift 中 Int() ‘结构体’的构造函数
        print(x + Int(y))
        
        // 2.将 x 转换成 Double
        print(Double(x) + y)
        
        print(x)
        print(y)        
    }


}

