//
//  ViewController.swift
//  Swift3.0-011-字典
//
//  Created by tan on 2017/2/28.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo3()
    }

    // MARK: - 定义
    func demo() {
        
        // OC 定义字典使用 {}
        // Swift 中同样使用 []
        
        // [KEY: VALUE] -> [String: NSObject]
        let dict = ["name": "张","age": 18] as [String : Any]
        print(dict)
        
        // 定义字典的数组 -- 提示：这种格式在开发中使用的最多！
        /**
         An object that may be converted to JSON must have the following properties:
         所有对象能够被转换成 JSON（字典或数组）必须遵守以下规则
         
         - Top level object is an NSArray or NSDictionary
         - 顶级节点是数组 / 字典
         
         - All objects are NSString, NSNumber, NSArray, NSDictionary, or NSNull
         - 所有的对象必须是 NSString, NSNumber or NSNull
         - NSArray, NSDictionary 可以嵌套使用
         
         - All dictionary keys are NSStrings
         - 所有的 key 都是 NSStrings
         
         - NSNumbers are not NaN or infinity
         - NSNumbers 不能为 nil 或者无穷大
         */
        // 定义字典的数组 -- 提示：这种格式在开发中使用的最多！
        let array: [[String: Any]] = [
            ["name": "张","age": 18],
            ["name": "李","age": 100]
        ]
        print(array)
        
    }
    
    // MARK: - 增删改
    func demo1() {
        
        // 可变/不可变
        var dict = ["name": "张","age": 18] as [String : Any]
        
        // 新增 - 如果 Key 不存在，就是新增
        dict["title"] = "大哥"
        print(dict)
        
        // 修改 - 字典中，是通过 Key 取值，key 在字典中必须是唯一的！
        // 如果 Key 存在，就是修改
        dict["name"] = "大西瓜"
        print(dict)
        
        // 删除 - 直接给定 Key
        // *** 科普，字典是通过 Key 来定位值的，Key  必须是可以 ‘hash 哈希’ MD5一种
        // hash 就是将字符串变成唯一的‘整数’，便于查找，提高字典遍历的速度
        dict.removeValue(forKey: "age")
        print(dict)
    }
    
    // MARK: - 遍历
    func demo2() {
        
        let dict = ["name": "张","age": 18,"title": "老板"] as [String : Any]
        
        // 元组 (key: String, value: Any)
        for e in dict {
            print(e)
            print("\(e.key) \(e.value)")
        }
        
        print("------")
        
        /**
         前面的是 key
         后面的是 value
         
         具体的名字可以随便
         
         OC 遍历 for in 只能获取到 KEY
         */
        for (key,value) in dict {
            
            print("\(key) \(value)")
        }
        
    }
    
    // MARK: - 合并
    func demo3() {
        
        var dict1 = ["name": "张","age": 18,"title": "老板"] as [String : Any]
        let dict2 = ["name": "大瓜","height": 1.9] as [String : Any]
        
        // 将 dict2 合并到 dict1
        // 提示：字典不能直接相加 dict1 = dict1 + dict2
        // 思路：遍历 dict2 依次设置
        // 如果 key 存在，会改变，不存在会新增！
        for e in dict2 {
            dict1[e.key] = dict2[e.key]
        }
        
        
    }


}

