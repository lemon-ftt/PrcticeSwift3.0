//
//  Person.swift
//  010-运行时加载属性列表
//
//  Created by 范坛 on 2017/9/11.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var name: String?
    
    // 基本数据类型，在 OC 中没有可选，如果定义成可选，运行时同样获取不到，使用 KVC 就会崩溃
    var age: Int = 0
    
    // private 的属性，使用运行时同样获取不到属性（可以获取到 ivar），同样会使 KVC 崩溃
    private var title: String?
    
    // 目标：（使用运行时）获取当前类所有属性的数值
    class func propertyList () -> [String] {
        
        var count: UInt32 = 0
        
        // 1. 获取 ‘类’ 的属性列表 返回属性列表的数组
        // <#T##outCount: UnsafeMutablePointer<UInt32>!##UnsafeMutablePointer<UInt32>!#> 可变的 UInt32 类型的指针
        let list = class_copyPropertyList(self, &count)
        
        print("属性的数量\(count)")
        
        // 2. 遍历数组
//        for i in 0..<Int(count) {
//            
//            // 3. 根据下表来获取属性
//            let pty = list?[i]
//            
//            // 4. 获取 ‘属性’ 的名称 C 语言的字符串
//            // Int8 -> Byte -> char => C 语言的字符串
//            let cName = property_getName(pty!)
//            
//            print(cName ?? "")
//            
//            // 5. 转换成 OC 的字符串
//            let name = String(utf8String: cName!)
//            
//            print(name ?? "")
//        }
        
        for i in 0..<Int(count) {
            
            // 3. 根据下表来获取属性
            guard let pty = list?[i],
                let cName = property_getName(pty),
                let name = String(utf8String: cName)
                else {
                    // 继续遍历下一个
                    continue
            }
            print(cName)
            print(name)
        }
        
        // 6. 释放 C 语言的对象
        free(list)
        
        return []
    }

}
