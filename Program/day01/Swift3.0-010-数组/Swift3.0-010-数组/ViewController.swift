//
//  ViewController.swift
//  Swift3.0-010-数组
//
//  Created by tan on 2017/2/28.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo5()
    }
    
    // MARK: - 数组的定义
    func demo() {
        
        // OC 使用 [] 定义数组，Swift 一样，但是没有 ‘@’
        // 自动推导的结果 [String] -> 表示数组中存放的都是String
        // 跟 OC 中的数组指定泛型类似
        let array = ["张三","小芳","小样"]
        print(array)
        
        // [Int] -> 表示存放的都是 Int
        // Swift 中基本数据类型不需要包装
        let array1 = [1,2,3,4,5,6]
        print(array1)
        
        // CG 结构体
        let p = CGPoint(x: 10, y: 300)
        let array2 = [p]
        print(array2)
        
        // 混合数组：开发中几乎不用，因为数组是靠下标索引
        // 如果数组中的类型不一致，自动推导的结果 [NSObject]
        // 在 Swift 中还有一种类型 [AnyObject] -> 任意对象
        // 在 Swift 中一个类可以没有任何‘父类’
        // *** 在混合数组中，CG 结果提需要包装
        let array3 = ["张三",1,p] as [Any]
        print(array3)
        
    }
    
    // MARK: - 数组的遍历
    func demo1() {
        
        let array = ["张三","小芳","小样"]
        
        // 1. 按照下标遍历
        print("***按照下标遍历***")
        for i in 0..<array.count {
            print(array[i])
        }
        
        // 2. for in 遍历元素
        print("***for in 遍历元素***")
        for s in array {
            print(s)
        }
        
        // 3. enum block 遍历，同时遍历下标和内容
        // option + click
        print("***同时遍历下标和内容***")
        // (offset: Int, element: String) -> 元组
        for e in array.enumerated() {
            print(e)
            print("\(e.offset) \(e.element)")
        }
        
        // 4. 遍历下标和内容2
        print("***同时遍历下标和内容2***")
        // n 就是索引下标
        // s 就是 [String] 数组 n 对应的 String 元素
        // 其中 n/s 名字可以随便写
        for (n,s) in array.enumerated() {
            print("\(n) \(s)")
        }
        
        // 5. 反序遍历
        print("***反序遍历***")
        for s in array.reversed() {
            print(s)
        }
        
        // 6. 反序索引&内容
        print("***反序索引&内容***")
        print("***错误的反序索引&内容***")
        // 索引和内容不一致
        for (n,s) in array.reversed().enumerated() {
            print("\(n) \(s)")
        }
        
        print("***正确的反序索引&内容***")
        // 先枚举，再反序！
        for (n,s) in array.enumerated().reversed() {
            print("\(n) \(s)")
        }
    }
    
    // MARK: - 数组的增/删/改
    func demo2() {
        // OC 中数组分可变 NSMutableArray（var）/ 不可变 NSArray（let）
        var array = ["张三","小芳","小样"]
        // 追加元素
        array.append("老王")
        print(array)
        
        // 修改，通过下标定位
        array[0] = "🃏"
        print(array)
        
        // 删除
        array.remove(at: 3)
        print(array)
        
        // 删除全部，并且保留空间
        array.removeAll(keepingCapacity: true)
        print("\(array) \(array.capacity)")
    }
    
    // MARK: - 数组的容量
    func demo3() {
        
        // 定义一个数组，指定类型是 存放 Int 的数组，但是没有初始化
//        var array: [Int]
        // 给数组进行初始化
//        array = [Int]()
        // 以上两句代码可以合并成一句
        var array = [Int]()
        
        print("初始容量 \(array.capacity)")
        
        for i in 0..<8 {
            
            array.append(i)
            print("\(array) 容量 \(array.capacity)")
        }
    }
    
    // MARK: - 数组合并
    func demo5() {
        
//        var array = ["张三","小芳","小样"]
//        let array2 = ["1","2","3"]
        
        var array: [Any] = ["张三","小芳","小样"]
        let array2 = ["1","2","3",180] as [Any]
        
        // 将 array2 的内容合并到 array 中
        // 注意：要合并数组的两个类型必须一致
        array += array2
        print(array)
        
    }
    
}

