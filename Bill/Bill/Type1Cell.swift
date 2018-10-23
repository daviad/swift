//
//  Type1Cell.swift
//  Bill
//
//  Created by  dingxiuwei on 2018/10/23.
//  Copyright © 2018年  dingxiuwei. All rights reserved.
//

import UIKit
import SnapKit

class Type1Cell: UITableViewCell {
    var rightConstraint: Constraint? = nil
    
    var rightText: String = "" {
        didSet(oldText) {
            rightLabel.text = rightText
        }
    }
    
    
    let rightLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    func setupConstraints() {
        rightLabel.snp.makeConstraints({ (make) in
            make.top.equalTo(self.contentView)
            make.left.equalTo(self.contentView)
            make.right.equalTo(self.contentView)
            make.height.equalTo(self.contentView)
        })
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(rightLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
