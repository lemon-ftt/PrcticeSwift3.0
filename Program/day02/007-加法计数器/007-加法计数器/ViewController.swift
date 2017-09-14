//
//  ViewController.swift
//  007-加法计数器
//
//  Created by 范坛 on 2017/9/7.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numText1: UITextField?
    var numText2: UITextField?
    var resultLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
    }
    
    func setupUI() -> () {
        // 1> 两个textField
        let tf1 = UITextField(frame: CGRect(x: 20, y: 20, width: 100, height: 30))
        tf1.borderStyle = .roundedRect
        tf1.text = "0"
        view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRect(x: 140, y: 20, width: 100, height: 30))
        tf2.borderStyle = .roundedRect
        tf2.text = "0"
        view.addSubview(tf2)
        
        numText1 = tf1
        numText2 = tf2
        
        // 2> 三个Label
        let l1 = UILabel(frame: CGRect(x: 120, y: 20, width: 20, height: 30))
        l1.text = "+"
        l1.textAlignment = .center
        view.addSubview(l1)
        
        let l2 = UILabel(frame: CGRect(x: 240, y: 20, width: 20, height: 30))
        l2.text = "="
        l2.textAlignment = .center
        view.addSubview(l2)
        
        let l3 = UILabel(frame: CGRect(x: 260, y: 20, width: 60, height: 30))
        l3.text = "123"
        l3.textAlignment = .left
        view.addSubview(l3)
        
        resultLabel = l3
        
        // 3> 一个button
        let b1 = UIButton()
        b1.setTitle("计算", for: UIControlState(rawValue: 0))
        b1.setTitleColor(#colorLiteral(red: 0.3374496398, green: 1, blue: 0.3883817176, alpha: 1), for: UIControlState(rawValue: 0))
        b1.sizeToFit()
        b1.center = view.center
        b1.addTarget(self, action: #selector(calc), for: .touchUpInside)
        view.addSubview(b1)
        
    }
    
    /// 计算结果
    func calc() {
        
        //键盘收起
        numText1?.resignFirstResponder()
        numText2?.resignFirstResponder()
        
        print(#function)
        print("\(String(describing: numText1?.text)) ~~~ \(String(describing: numText2?.text))")
        
        // 将文本框内容转换为数值
        // Int？如果文本框内容不是数字 Int 之后是 nil
        // 先测试：let num1 = Int(numText1?.text ?? "")
        guard let num1 = Int(numText1?.text ?? ""),let num2 = Int(numText2?.text ?? "") else {
            print("必须输入数字")
            return
        }
        
        // 处理结果
        resultLabel?.text = "\(num1 + num2)"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //键盘收起
        numText1?.resignFirstResponder()
        numText2?.resignFirstResponder()
    }

}

