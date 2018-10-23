//
//  BillDetailViewController.swift
//  Bill
//
//  Created by  dingxiuwei on 2018/10/23.
//  Copyright © 2018年  dingxiuwei. All rights reserved.
//

import UIKit

class BillDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tb: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "账单详情"
        // Do any additional setup after loading the view.
        
        tb = UITableView.init(frame: self.view.bounds, style: .plain)
        self.view.addSubview(tb)
        tb.dataSource = self as UITableViewDataSource;
        tb.delegate = self as UITableViewDelegate;
        tb.register(Type1Cell.self, forCellReuseIdentifier: "cell")
        tb.tableFooterView = UIView.init()
        tb.separatorStyle = .none
        tb.showsVerticalScrollIndicator = false
        
        if #available(iOS 7.0, *) {
            tb.estimatedRowHeight = 0;
            tb.estimatedSectionHeaderHeight = 0;
            tb.estimatedSectionFooterHeight = 0;
        }
        let header = HeaderView()
        header.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        tb.tableHeaderView = header
        
        header.name = "ding xiu wei"
        header.money = "-5.00"
        header.setNeedsUpdateConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tb.reloadData()
        tb.tableHeaderView?.setNeedsUpdateConstraints()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section {
            return 7
        } else {
            return 2
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if 0 == section {
            return 0
        }
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: Type1Cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Type1Cell
        cell.accessoryType = .disclosureIndicator
        cell.selectionStyle = .none
        if 0 == indexPath.section {
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "付款方式"
                cell.rightText = "中国银行(6473)"
            case 1:
                cell.textLabel?.text = "商品说明"
                cell.rightText = "商品"
                cell.accessoryType = .none
            case 2:
                cell.textLabel?.text = "账单分类"
                cell.rightText = "日用品"

            case 3:
                cell.textLabel?.text = "创建时间"
                cell.rightText = "2018-10-23 08:21"
                cell.accessoryType = .none
            case 4:
                cell.textLabel?.text = "订单号"
                cell.rightText = "20181023322001223344554333"
                cell.accessoryType = .none
            case 5:
                cell.textLabel?.text = "商户订单号"
                cell.rightText = "商户可扫码退款或查询交易"
                cell.accessoryType = .none
            case 6:
                cell.textLabel?.text = ""
                cell.rightText = ""
                cell.accessoryType = .none
            default: break
            }
        } else {
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "标签和备注"
                cell.rightText = "添加"
            case 1:
                cell.textLabel?.text = "查看往来记录"
            default: break
        }
        }
        return cell
    }
    
}
