//
//  Student.swift
//  008-构造函数
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class Student: Person {
    
    // 学号
    var num: String
    
    override init() {
        print("student init")
        num = "001"
        super.init()
    }

}
