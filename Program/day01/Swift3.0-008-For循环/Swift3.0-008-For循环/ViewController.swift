//
//  ViewController.swift
//  Swift3.0-008-For循环
//
//  Created by tan on 2017/2/27.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo2()
    }

    func demo() {
        /**
         // 传统的 for，在 swift3.0 被取消
         // i++ / ++i，在 swift3.0 被取消 改为 i += 1
         for var i = 0; i < 10; i++ {
         
         }
         */
    }
    
    /**
     '空格大法' Swift 对语法要求非常严，尤其是空格
     
     @property (nonatomic, copy) NSString* name;
     @property (nonatomic, copy) NSString * name;
     */
    func demo1() {
        
        // 变量 i 在 [0,5）循环
        for i in 0..<5 {
            print(i)
        }
        
        print("------")
        
        // 变量 i 在 [0,5] 循环
        for i in 0...5 {
            print(i)
        }
        
        // 提示：范围定义是一个固定的格式，一定注意空格
        // CountableRange<Int>
        let r1 = 0..<5
        print(r1)
        
        // CountableClosedRange<Int>
        let r2 = 0...5
        print(r2)
        
    }
    
    // MARK: - 反序遍历
    func demo2() {
        
        // reversed 反转
        for i in (0..<10).reversed() {
            print(i)
        }
    }


}

