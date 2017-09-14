//
//  Student.swift
//  008-构造函数
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class Student: Person {
    
    var num: String
    
    init(name: String, num: String) {
        
        self.num = num
        
        // 调用父类方法，给 name 初始化
        super.init(name: name)
    }

}
