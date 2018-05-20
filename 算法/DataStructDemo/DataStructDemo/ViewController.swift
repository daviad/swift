//
//  ViewController.swift
//  DataStructDemo
//
//  Created by 丁秀伟 on 2018/5/20.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataArr = ["Josephus"]
    
    let  cellIdentifier  = "cell"

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        cell?.textLabel?.text = dataArr[indexPath.row]
        return cell!;
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let table = UITableView(frame:self.view.bounds)
        self.view.addSubview(table)
        table.dataSource = self
        table.delegate = self
        table.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let jose = Josephus()
        jose
        
    }

}

