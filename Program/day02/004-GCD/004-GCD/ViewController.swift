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
        
        loadData()
    }
    
    func loadData() -> () {
        
        // 将任务添加到队列，制定执行任务的函数
        // 翻译：队列调度任务（block/闭包），以 同步/异步 的方式执行
        DispatchQueue.global().async { 
            print("耗时操作 \(Thread.current)")
            
            // 主队列回调
            DispatchQueue.main.async(execute: { 
                print("主线程更新UI \(Thread.current)")
            })
        }
        
    }


}

