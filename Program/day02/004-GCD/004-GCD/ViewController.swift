//
//  ViewController.swift
//  004-GCD
//
//  Created by 范坛 on 2017/9/4.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData { (result) in
          print("获取的新闻数据\(result)")
        }
        
        // ‘尾’随闭包
        // 如果函数的最后一个参数是闭包，函数参数可以提前结束，最后一个参数直接使用 {} 包装闭包的代码        
        // loadData(completion: <#T##([String]) -> ()#>)
        loadData() { (result) in
            print("111\(result)")
        }
        
        // 按照函数本身编写的结果
        // 关于尾随闭包
        // - 1. 要能看懂
        // - 2. 能够慢慢的编写，‘大多数’ xcode 的智能提示会帮我们做
        loadData(completion: { (result) -> () in
            print(result)
        })
    }
    
    func demo() -> () {
        // 尾随闭包
        DispatchQueue.global().async {
            // 嵌套的 GCD xcode 不会改成尾随闭包
            DispatchQueue.main.async(execute: { 
                
            })
        }
        
        // 尾随闭包
        DispatchQueue.main.async { 
            
        }
    }
    
    
    /**
     在异步执行任务，获取结果，通过 block/闭包 回调
     * Swift 中，闭包的应用场景和 block 完全一致
     */
    func loadData(completion:@escaping (_ result: [String]) -> ()) -> () {
        
        // 将任务添加到队列，制定执行任务的函数
        // 翻译：队列调度任务（block/闭包），以 同步/异步 的方式执行
        DispatchQueue.global().async { 
            print("耗时操作 \(Thread.current)")
            
            // 休眠
            Thread.sleep(forTimeInterval: 1.0)
            
            // 获得结果
            let json = ["头条","八卦","大新闻"]
            
            // 主队列回调
            DispatchQueue.main.async {
                print("主线程更新UI \(Thread.current)")
                
                // 回调 -> 执行 闭包（通过参数传递的）
                // 传递异步获取的结果
                completion(json)
            }
        }
    }


}

