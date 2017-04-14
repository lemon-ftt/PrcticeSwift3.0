//
//  ViewController.swift
//  Swift3.0-006-可选项的判断
//
//  Created by tan on 2017/2/24.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // demo4()
        demo5(name: "老王", age: nil)
//        demo1(x: 10, y: 100)
        demo1(x: 10, y: nil)
        demo2(x: 2, y: nil)
        
    }

    func demo() {
        
        let x: Int? = 10
        let y: Int? = 200
        
        // 强行解包有风险
        print(x! + y!)
        
    }
    
    func demo1(x: Int?, y: Int?) {
        
        // 1. 强行解包有风险
        // 2. 使用 if 判断
        //    但是：如果直接使用 if，一不小心，会让代码很丑陋
        if x != nil && y != nil {
            print(x! + y!)
        } else {
            print("x 或者 y 为 nil")
        }
        
    }
    
    //MARK: - ??
    func demo2(x: Int?, y: Int?) {
       
        /**
         ?? 是一个简单的 三目
          - 如果有值，使用值
          - 如果没有值，使用 ?? 后面的值替代
         */
        print((x ?? 0 ) + (y ?? 0))
        
        let name: String? = "老王" //= nil
        
        print("\(name) 你好")
        print((name ?? "") + "你好")
        
        // ?? 操作符号的优先级‘低’，在使用的时候，最好加上（）包一下
        print(name ?? "" + "你好")
    }
    
    // MARK: - if let
    // 不是单纯的 if
    func demo3() {
        
        let oName: String? = "老王"
        let oAge: Int? = 10
        
        if oName != nil && oAge != nil {
            print(oName! + String(oAge!))
        }
        
        // if let 连用，判断对象的值是否为 nil，{} 内一定有值，可以直接使用，不需要解包
        // if var 连用，可以对值进行修改！
        if var name = oName,
            let age = oAge {
            
            name = "老李"
            // 进入分支之后，name 和 age 一定有值，不需要解包
            // name 和 age 的作用域仅在 {} 中
            print(name + String(age))
        } else {
            print("name 或 age 为 nil")
        }
        
    }
    
    // MARK: - guard 守卫/守护
    func demo4() {
        
        let oName: String? = "老王"
        let oAge: Int? = 10
        
        // guard let 守护一定有值，如果没有直接返回
        guard let name = oName,
            let age = oAge else {
                
                print("姓名或者年龄为 nil")
                return
        }
        
        // 代码执行至此，name 和 age 一定有值！
        // 通常判断是否有值之后，会做具体逻辑实现,通常代码多！
        // 如果用 if let 凭空多了一层分支，guard 是降低分支层次的办法
        // guard 的语法是 Swift2.0推出的
        print(name + String(age))
    }
    
    func demo5(name: String?,age: Int?) {
        
        if let name = name,let age = age {
            
            // 非空的 name 和 age 仅在 {} 中有效！
            print(name + String(age))
            print("-------")
        }
        
        // guard let & if let 的技巧
        //
        // 使用同名的变量接收值，在后续使用的嗾使非空值，不需要解包
        // 好处：可以避免起名字的烦恼！
        guard let name = name, let age = age else {
            
            print("姓名或者年龄为 nil")
            return
        }
        
        print(name + String(age))
    }

}

