//
//  ViewController.swift
//  Swift3.0-007-Switch
//
//  Created by tan on 2017/2/27.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        demo(num: "9")
    }

    func demo(num: String) {
        
        /**
         1. switch 可以针对任意类型值进行分支，不再局限在整数
         2. switch 一般不需要 break
         3. switch 如果多值，使用‘,’
         4. 所有的分支至少需要一条指令，如果什么都不干，才使用break
         */
        switch num {
        case "10","9":
            print("优")
        case "8":
            break
        default:
            print("一般")
        }
        
    }


}

