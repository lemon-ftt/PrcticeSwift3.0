//
//  ViewController.swift
//  Swift3.0-002-Xcode 8.0 的特性
//
//  Created by tan on 2017/2/13.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit


/// 从 Xcode 8.0 开始，目前所有的插件都无法工作！
//  option + cmd + /  增加文档注释

class ViewController: UIViewController {

    //MARK: -视图生命周期
    //MARK: 视图加载完成
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v = UIView(frame: CGRect(x: 0, y: 20, width: 200, height: 150))
        
        // color + 回车
        v.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)                 //TODO: 应该设置新的颜色
        
        view.addSubview(v)
        
        // 图像视图
        let iv = UIImageView(image: #imageLiteral(resourceName: "美女"))    //FIXME:应该更改头像
        iv.center = view.center
        view.addSubview(iv)
        
    }
    
    //MARK: 接收到内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

