//
//  ViewController.swift
//  Swift3.0-009-字符串
//
//  Created by tan on 2017/2/27.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo4()
    }
    
    // MARK: - 字符串的遍历
    func demo() {
        
        let str = "我要飞得更高"
        
        // NSString 不支持以下方式遍历
        for c in str.characters {
            print(c)
        }
        
    }
    
    // MARK: - 字符串长度
    func demo1() {
        
        let str = "hello world你好"
        
        // 1. 返回指定编码的对应的字节数量
        //    UTF8 的编码（0-4个），每个汉字是3个字节
        print(str.lengthOfBytes(using: .utf8))
        
        // 2. 字符串长度 - 返回字符的个数 (推荐使用)
        print(str.characters.count)
        
        // 3. 使用 NSString 中转
        /**
         str as NSString
         
         OC 的写法 (MyCustomCell *)[tableView dequeue...]
         Swift 中可以使用 '值 as 类型'-->类型转换
         */
        let ocStr = str as NSString
        print(ocStr.length)
        
    }
    
    // MARK: - 拼接
    // - OC NSString stringWithFormat:xxx
    func demo2() {
        
        let name = "老王"
        let age = 18
        let title: String? = "BOSS"
        let point = CGPoint(x: 100, y: 200)
        
        
        // 格式：\(变量/常量)
        // 拼接字符串需要注意 可选项 Optional
        let str = "\(name) \(age) \(title ?? "") \(point)"
        
        print(str)
        
    }
    
    // MARK: - 格式化
    func demo3() {
        
        let h = 8
        let m = 9
        let s = 6
        
        let dateStr = "\(h):\(m):\(s)"
        print(dateStr)
        
        // 使用格式字符串格式化
        let dateStr1 = String(format: "%02d:%02d:%02d", h,m,s)
        print(dateStr1)
        
    }
    
    // MARK: - 字符串的子串
    func demo4() {
        
        // 建议：一般使用 NSString 作为中转，因为 Swift 取子串的方法一直在优化
        let str = "我们一起去飞"
        
        // 1. NSString
        let ocStr = str as NSString
        let s1 = ocStr.substring(with: NSMakeRange(2, 3))
        
        print(s1)
        
        // 2. String 的 Swift3.0 的方法
        // let r = 0..<5
        // str.substring(with: <#T##Range<String.Index>#>)
        // Index
        // startIndex postion == 0
        print(str.startIndex)
        
        // endIndex postion == str.length
        print(str.endIndex)
        
        let s2 = str.substring(from: "我们".endIndex)
        print(s2)
        
        let s3 = str.substring(from: "abc".endIndex)
        print(s3)
        
        //取子字符串的范围
        guard let rang = str.range(of: "一起") else {
            print("没有找到字符串")
            return
        }
        // 一定找到的范围
        print("------")
        print(rang)
        print(str.substring(with: rang))
        
    }


}

