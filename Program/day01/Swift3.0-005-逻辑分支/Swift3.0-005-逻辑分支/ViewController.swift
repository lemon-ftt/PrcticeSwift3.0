//
//  ViewController.swift
//  Swift3.0-005-逻辑分支
//
//  Created by tan on 2017/2/24.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo1()
    }

    func demo() {
        
        let x = 10
        
        /**
         1. 条件不需要（）
         2. 语句必须有{ }
         */
        if x > 5 {
            print("大了")
        } else {
            // Will never be executed
            // 永远不会执行 - 编译器编译的时候，会做语法检查！
            print("小了")
        }
    }
    
    //MARK: -三目
    func demo1() {
        
        let x = 3
        
        // 三目的语法和 OC 的一样
        x > 5 ? print("大了") : print("小了")
        
        // 分享，有印象就行
        // ‘()’ 表示空执行
        x > 5 ? print("大了") : ()
        
    }


}

