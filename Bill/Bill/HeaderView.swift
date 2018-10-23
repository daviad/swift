//
//  HeaderView.swift
//  Bill
//
//  Created by  dingxiuwei on 2018/10/23.
//  Copyright © 2018年  dingxiuwei. All rights reserved.
//

import UIKit
import SnapKit

class HeaderView: UIView {
    var didSetupConstraints = false
    var name: String = "" {
        didSet(oldName) {
            didSetupConstraints = false
            nameLB.text = name
        }
    }
    
    var money: String = "0.00" {
        didSet(oldMoney){
           didSetupConstraints = false
            moneyLB.textAlignment = .center
            moneyLB.text = money
        }
    }
    
    let avatar: UIImageView = {
        let view = UIImageView.init()
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        return view;
    }()
    
    let nameLB: UILabel = {
        let lable = UILabel.init()
        lable.numberOfLines = 0
        lable.font = UIFont.systemFont(ofSize: 14)
        return lable;
    }()
    
    let moneyLB: UILabel = {
        let lable = UILabel.init()
        return lable;
    }()
    
    let statusLB: UILabel = {
        let lable = UILabel.init()
        lable.text = "交易成功"
        lable.textAlignment = .center
        return lable;
    }()
    
    init() {
        super.init(frame: CGRect.zero)
        self.addSubview(avatar)
        self.addSubview(nameLB)
        self.addSubview(moneyLB)
        self.addSubview(statusLB)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        if true {
            didSetupConstraints = true
            let sz = self.name.boundingRect(with: CGSize(width: 100, height: 999), options: .usesLineFragmentOrigin, attributes:[.font:nameLB.font], context: nil).size
            nameLB.snp.makeConstraints { make in
                make.top.equalTo(self).offset(10)
             
                make.height.equalTo(ceil(sz.height))
                make.width.equalTo(ceil(sz.width))
                make.centerX.equalTo(self)
            }
            
            avatar.snp.makeConstraints { (make) in
                make.right.equalTo(nameLB.snp.left).offset(-8)
                make.centerY.equalTo(nameLB)
                make.size.equalTo(CGSize(width: 25, height: 25))
            }
            
            moneyLB.snp.makeConstraints { (make) in
                make.top.equalTo(nameLB.snp.bottom).offset(10)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(50)
            }
            
            statusLB.snp.makeConstraints { (make) in
                make.top.equalTo(moneyLB.snp.bottom).offset(10)
                make.left.equalTo(0)
                make.right.equalTo(0)
                make.height.equalTo(50)
            }
            
//            self.snp.makeConstraints { (make) in
//                make.bottom.equalTo(statusLB.snp.bottom).offset(10)
//            }
        }
        

        
        super.updateConstraints()
    }
}
