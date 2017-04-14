//
//  ListTableViewController.swift
//  Swift3.0--联系人Demo
//
//  Created by tan on 2017/2/21.
//  Copyright © 2017年 tantan. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    
    ///联系人数组
    var personList = [Person]()

    override func viewDidLoad() {
        super.viewDidLoad()

        loadData { (arr) in
            print(arr)
            
            self.personList += arr
            
            self.tableView.reloadData()
            
        }
    }
    

    //    Function types cannot have argument label 'list'; use '_' instead
    /// 模拟异步，利用闭包回调
    private func loadData(completion:@escaping (_ list: [Person]) -> ()) -> () {
        
        DispatchQueue.global().async {
            print("正在努力加载中")
            
            Thread.sleep(forTimeInterval: 1)
            
            var arrayM = [Person]()
            
            for i in 0..<20 {
                
                let p = Person()
                p.name = "zhangsan - \(i)"
                p.phone = "1860" + String(format: "%06d", arc4random_uniform(1000000))
                p.title = "Boss"
                
                arrayM.append(p)
            }
            
            //主线程回调
            DispatchQueue.main.async(execute: {
                
                completion(arrayM)
            })
        }
        
    }
    
    //MARK: -数据源方法
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = personList[indexPath.row].name
        cell.detailTextLabel?.text = personList[indexPath.row].phone
        return cell
        
    }
    
}
