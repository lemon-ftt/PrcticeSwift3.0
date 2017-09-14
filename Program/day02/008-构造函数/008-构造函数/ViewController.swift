//
//  ViewController.swift
//  008-构造函数
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

/**
 在 Swift 中，默认同一个项目中（同一个命名空间），所有的类都是共享的，可以直接访问，不需要 import
 所有对象的属性 var 也可以直接访问到
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 实例化 person
        // () -> alloc / init
        // Swift 中对应一个函数 init*() 构造函数
        // 作用：给成员变量分配空间，初始化成员变量
//        let p = Person()
        
        let s = Student()
        print("\(s.name)---\(s.num)")
    }

    


}

