//
//  ViewController.swift
//  009-构造函数KVC
//
//  Created by 范坛 on 2017/9/8.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let p = Person(dict: ["name":"老张", "age": 109, "title": "Boss"] as [String: AnyObject])
        
        // 如果子类没有重写父类的方法，调用的时候，会直接调用父类的方法！
        let s = Student(dict: ["name":"老张", "age": 109, "title": "Boss", "num": "001", "XXX": "多余的键值"] as [String: AnyObject])
        print("\(s.name ?? "") \(s.age) \(s.title ?? "") \(s.num ?? "")")
    }

}

