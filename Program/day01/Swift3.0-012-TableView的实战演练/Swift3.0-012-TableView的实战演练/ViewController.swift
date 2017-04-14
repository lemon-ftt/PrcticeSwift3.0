//
//  ViewController.swift
//  Swift3.0-012-TableView的实战演练
//
//  Created by tan on 2017/4/13.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    func setupUI() {
        
        // 1. 创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        tv.dataSource = self
        tv.delegate = self
        
        // 2. 添加到视图
        view.addSubview(tv)
        
        // 3. 注册cell OC [UITableViewCell class]
        tv.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cellId")
        
        // 4. 设置数据源
        // Swift 中没有遵守协议会报错
        
    }
    
    // MARK: - 数据源 UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
//        guard let cell = <#expression#> else { return <#return value#> }
//        
//        if cell == nil {
//            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellId")
//        }
        
        // 提示：textLabel 是可选的
        // 代码中 ？ 是自动带的，如果 textLabel 有，就使用，如果没有，就什么也不做
        cell.backgroundColor = UIColor.brown
        cell.textLabel?.text = "hello ---- \(indexPath.row)"
        cell.detailTextLabel?.text = "hello ---- \(indexPath.row)"
        return cell
    }
    
    // MARK: - 清除cell左边线空白
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if cell.responds(to: #selector(setter:tableView.separatorInset)) {
        
            //UIEdgeInsetsZero
            tableView.separatorInset = UIEdgeInsets.zero
        }
        if cell.responds(to: #selector(setter:tableView.layoutMargins)) {
            tableView.layoutMargins = UIEdgeInsets.zero
        }
    }

}

