//
//  Person.swift
//  009-构造函数KVC
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

/**
 1. 定义模型属性的时候，如果是对象，通常都是可选的
    - 在需要的时候创建
    - 避免写构造函数，可以简化代码
 2. 如果是基本数据类型，不能设置成可选的，而且要设置初始值， 否则 KVC 会崩溃！
 3. 如果需要使用 KVC 设置数值，属性不能是 private 的
 4. 使用 KVC 方法之前，应该调用 super.init 保证对象实例化完成！
 */
class Person: NSObject {
    
    // name 属性是可选的，在 OC 中很多属性都是在需要的时候创建的
    // 例如 vc.view / tableViewCell.textLabel / detailLabel / iamgeView
    // 因为在手机开发中，内存很宝贵，有些属性并不是一定需要分配空间的
    // 延迟加载：在需要的时候再创建！
    var name: String?
    
    // 给基本数据类型初始化
    // - 使用 KVC 会提示无法找到 age 的 KEY
    // - 原因：Int 是一个基本数据类型的结构体，OC 中没有，OC 中只有基本数据类型！
    // var age: Int?
    var age: Int = 0
    
    // - 如果是 private 属性，使用 KVC 设置值得时候，同样无法设置！
    // - 如果设置成 private 属性/方法，禁止外部访问的
    // private var title: String?
    var title: String?
    
    // 重载构造函数，使用字典为本类设置初始值
    init(dict:[String: AnyObject]) {
        
        // 保证对象已经完全初始化完成！
        super.init()
        
        // Use of 'self' in method call 'setValuesForKeys' before super.init initializes self
        // 使用 self 的方法 ‘setValuesForKeys’ 之前，应该调用 super.init
        // KVC 的方法，是 OC 的方法，在运行时给对象发送消息
        // *** 要求对象已经实例化完成！
        setValuesForKeys(dict)
    }
    
    // 重写父类的方法
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        // 没有调用 super，将父类的代码实现完全覆盖！不会崩溃！
    }

}
