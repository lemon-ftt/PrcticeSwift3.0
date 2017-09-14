//
//  ViewController.swift
//  006-循环引用
//
//  Created by 范坛 on 2017/9/5.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 属性就是一个 var
    var compeletionCallBack:(() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // block 中如果出现 self. 要特别小心！
        // 循环引用 单方向的引用是不会产生循环引用！
        // - 只是闭包对 self 进行了 copy，闭包执行完成之后，会自动销毁，同时释放对 self 的引用
        // - 同时需要 self 对闭包引用
        
        // *** 解除循环引用，需要打断链条
        // 方法1：OC 的方式
        // 细节1 var 只能修饰 var，不能修饰 let
        // 'weak' must be a mutable variable, because it may change at runtime
        // weak 在运行时可能会被修改 -> 指向的对象一旦被释放，会自动设置为 nil
        // ViewController?
//        weak var weakSelf = self
//        loadData {
//            // 细节 2
//            // 解包有两种方式：
//            // ?  可选解包 - 如果 self 已经被释放，不会向对象发送 view（getter） 的消息，更加安全
//            // ！ 强行解包 - 如果 self 已经被释放，强行解包会导致崩溃
//            
//            /** 
//             weakSelf?.view - 只是单纯的发送消息，没有计算
//             强行解包，因为需要计算，可选项不能直接参与计算！
//             */
//            print(weakSelf?.view)
//        }
        
        // 方法2：- Swift 的推荐方法
        // [weak self] 表示 {} 中的所有 self 都是弱引用，需要注意解包
        // 在 MRC 中如果要弱引用对象都是使用 assign，不会增加引用计数，但是一旦对象被释放，地址不会改变，继续访问，出现野指针
        // 在 ARC 中 weak，本质上是一个观察者模式，一旦发现对象被释放，会自动将地址设置为 nil，更加安全
        // 效率：weak 的效率会略微差一些
        // OC 中 ARC 下的 __unsafe_unretained 高级 iOS 程序员如果要自行管理内存，可以考虑使用
        loadData { [weak self] in
            print(self?.view)
        }
        
        // 方法3：- Swift 另一个方法，知道就好
        // [unowned self] 表示 {} 中所有 self 都是 assign 的，不会强引用，但是如果对象释放，指针地址不会变化
        // 如果对象被释放，继续调用就会出现野指针的问题
//        loadData { [unowned self] in
//            print(self.view)
//        }
    }

    
    func loadData(compeletion:@escaping () -> ()) ->  (){
        
        // 使用属性记录闭包 -> self 对闭包引用了
        compeletionCallBack = compeletion
        
        // 异步
        DispatchQueue.global().async {
            
            print("耗时操作")
            
            Thread.sleep(forTimeInterval: 2)
            
            // 回调，执行闭包
            DispatchQueue.main.async {
                compeletion()
            }
        }
    }
    
    // 类似于 OC 中的 dealloc
    deinit {
        print("我去了")
    }
    
}

