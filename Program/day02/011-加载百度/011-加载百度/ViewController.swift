//
//  ViewController.swift
//  011-加载百度
//
//  Created by 范坛 on 2017/9/19.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // URL 的构造函数可以返回 nil
        // 构造函数就是实例化对象的！
        // init?(string: String) -> 构造函数可以返回 nil
        let url = URL(string: "http://www.baidu.com")
        
        // 发起网络请求
        // 和 OC 的区别，闭包的所有参数，需要自己写， OC 是直接带入
        
        
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            
//            if (error != nil) {
//                
//                print("网络请求错误")
//                return
//            }
            
            guard let data = data else {
                print("网络请求错误")
                return
            }
            
            // 将 data 转换成字符串
            let html = String(data: data, encoding: .utf8)
            print(html ?? "")
        }.resume()
    }
}

