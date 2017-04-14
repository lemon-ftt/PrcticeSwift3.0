//
//  ViewController.swift
//  Swift3.0-001-第一个应用程序
//
//  Created by tan on 2017/2/13.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

/*
 1. OC [[UIView alloc] initWithXXX:]
    Swift UIView(XXX: )
        
    类名() == alloc / init 等价
 
 2. 类方法
    OC [UIColor redColor]
    Swift UIColor.red
 
 3. 访问当前对象的属性，可以不使用‘self.’
    建议：不使用
    原因：闭包（类似于 OC block），需要使用self.
 
 4. 没有‘;’
    ‘;’ 目的分割语句的，在Swift中，默认不需要
 
 5. 枚举类型
    OC     UIButtonTypeContactAdd
    Swift  .contactAdd
 
 6. 监听方法
   OC      @selector
   Swift   #selector，如果带参数，不需要使用":"
 
 7. 调试
    OC     NSLog
    Swift  print
        - 没有时间
        - 效率比 NSLog 要高
    
    跟踪函数
       - OC      __FUNCTION__
       - Swift   #function
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. 创建一个视图
        let v = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        //设置背景颜色
        v.backgroundColor = UIColor.green
        
        //添加到当前视图
        view.addSubview(v)
        
        //2. 创建一个按钮
        let btn = UIButton(type: .contactAdd)
        
        btn.center = v.center
        
        v.addSubview(btn)
        
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        btn.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControlEvents#>)
    }

    func clickMe(btn: UIButton) -> () {
        print(#function)
        print(btn)
    }


}

