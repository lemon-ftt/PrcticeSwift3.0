//
//  ViewController.swift
//  005-尾随闭包的一个坑
//
//  Created by 范坛 on 2017/9/5.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let l = UILabel()
        // (l) 参数结束 { 尾随闭包 }
        view.addSubview(l)
        
        // Extra argument in call
        // 调用了额外的参数
        {
            let l = UILabel()
            view.addSubview(l)
        }
        
    }

    


}

