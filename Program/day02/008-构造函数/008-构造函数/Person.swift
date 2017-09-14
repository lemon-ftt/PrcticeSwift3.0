//
//  Person.swift
//  008-构造函数
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

/**
 1. 给自己的属性分配空间并且设置初始值
 2. 调用父类的 ‘构造函数’ ，给父类的属性分配空间设置初始值
    NSObject 没有属性，只有一个成员变量 ‘isa’
 */

///'Person' cannot be constructed because it has no accessible initializers
// person 类 没有初始化器s，构造函数，可以有多个，默认的是init
class Person: NSObject {
    
    var name: String
    
    /// Overriding declaration requires an 'override' keyword
    // 重‘写’ -> 父类有这个方法，子类重新实现，需要 ‘override’ 关键字
    /// Property 'self.name' not initialized at implicitly generated super.init call
    // implicitly（隐式生成的 super.init）调用父类的构造函数之前，属性 self.name 没有被初始化
    override init() {
        print("Person init")
         name = "zhang"
        
        /// Property 'self.name' not initialized at super.init call
        // 在调用父类 super.init 的时候，没有给 'self.name' 初始化 -> 分配空间，设置初始值
        super.init()
        
        // name = "li"
    }
}
