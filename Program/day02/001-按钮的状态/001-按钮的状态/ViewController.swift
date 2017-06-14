//
//  ViewController.swift
//  001-按钮的状态
//
//  Created by tan on 2017/6/14.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /**
     
     Swift
     - 类
     - 结构体
     - 枚举 (一般不会用到太高级的语法)
     以上三个家伙都有构造函数,都可以有方法,整体看起来,都像原有的类
     
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton()
        
        btn.setTitle("", for: .normal)
        
        btn.setTitleColor(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), for: .normal)
        
        btn.sizeToFit()
        
        btn.center = view.center
        
        view.addSubview(btn)
        
    }

    


}

