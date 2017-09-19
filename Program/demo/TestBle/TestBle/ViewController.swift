//
//  ViewController.swift
//  TestBle
//
//  Created by 范坛 on 2017/9/14.
//  Copyright © 2017年 范坛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myCentralManager: CBCentralManager!
    var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCentralManager = CBCentralManager.init(delegate: self as CBCentralManagerDelegate , queue: nil)
        
        
        table = UITableView(frame:view.bounds, style: .plain)
        table.delegate = self as UITableViewDelegate
        table.dataSource = self as UITableViewDataSource
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(table)
        
    }
    
    func sca()  {
        myCentralManager?.scanForPeripherals(withServices: nil, options: nil)

    }

}

// MARK: - 代理
extension ViewController:CBCentralManagerDelegate {
    
    func centralManagerDidUpdateState(_ central: CBCentralManager){
        switch central.state {
        case .unknown: print("CBCentralManagerStateUnknown")
        case .resetting: print("CBCentralManagerStateResetting")
        case .unsupported: print("CBCentralManagerStateUnsupported")
        case .unauthorized: print("CBCentralManagerStateUnauthorized")
        case .poweredOff: print("CBCentralManagerStatePoweredOff")
        case .poweredOn: print("CBCentralManagerStatePoweredOn")
           
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber){ //这里自己去设置下连接规则
        if (peripheral.name?.hasPrefix("p"))!{
            //[peripheral.name == :@""] //找到的设备必须持有它，否则CBCentralManager中也不会保存peripheral，那么CBPeripheralDelegate中的方法也不会被调用！！
            print(peripheral)
        }
    }

}

extension ViewController:CBPeripheralDelegate {
    
        
//    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
//        print(peripheral)
//    }
    
}

extension ViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sca()
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "1.12"
        return cell!
        
    }
    
}

