//
//  ViewController.swift
//  Bill
//
//  Created by  dingxiuwei on 2018/10/23.
//  Copyright © 2018年  dingxiuwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let billController = BillDetailViewController.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationController?.pushViewController(billController, animated: false)
        
        let btn = UIButton.init(frame: CGRect(x: 0, y: 0, width: 150, height: 80))
        btn.center = self.view.center
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(tapAction), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btn)
    }

    @objc func tapAction() {
    self.navigationController?.pushViewController(billController, animated: true)
    }
}

