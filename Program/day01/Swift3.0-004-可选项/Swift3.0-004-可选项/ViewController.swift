//
//  ViewController.swift
//  Swift3.0-004-可选项
//
//  Created by tan on 2017/2/22.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo1()
    }
    
    func demo1() {
        
        // 1. 定义 y，没有初始化
        let y: Int?
        
        // 2. 给常量设置初始值，初始化的工作只能做一次
        y = 20
        
        //再次修改常量会报错
//        y = 30
        
        print(y)
        
        // *** var 的可选项值默认为 nil
        // *** let 的可选项没有默认值
        var x: Int?
        
        x = 10
        x = 100
        
        print(x)
        
        
    }

    /**
     定义 可选项使用 ？
     解包使用 '!',准备计算
     
     */
    func demo() {
        
        // 1. 原始的可选项定义
        // none 没有值，或者 some 某一类值
        let a: Optional = 10
        
        // 2. 简单的定义
        // '?' 用来定义 b 是一个可选的 Int 类型，可能没有值，也可能有一个整数
        let b: Int? = 20 //= nil
        
        
        print(a)
        print(b)
        
        // 1. '!' 强行解包 - 从可选项中强行获取对应的非空值，如果真的是 nil，就会崩掉！
        //    程序员必须为每一个 ‘!’ 负责
        //    程序中要少用 ‘!’
        print(a! + b!)
        
    }


}

