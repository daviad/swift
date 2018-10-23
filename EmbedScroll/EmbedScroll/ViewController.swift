//
//  ViewController.swift
//  EmbedScroll
//
//  Created by  dingxiuwei on 2018/4/16.
//  Copyright © 2018年  dingxiuwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate,UITableViewDelegate {
    var outerScroll:UITableView!
    var innerScroll:UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//         class_getInstanceMethod
        // Do any additional setup after loading the view, typically from a nib.
        outerScroll = UITableView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        outerScroll.backgroundColor = UIColor.red
        self.view.addSubview(outerScroll)
        outerScroll.delegate = self
        outerScroll.contentSize = CGSize(width: self.view.frame.size.width, height: 900)
       outerScroll.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 300))
        outerScroll.tableHeaderView?.backgroundColor = UIColor.white
        
        innerScroll = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 300))
        innerScroll.backgroundColor = UIColor.blue
        innerScroll.delegate = self
//        outerScroll.tableHeaderView = innerScroll
        innerScroll.contentSize = CGSize(width: self.view.frame.size.width, height: 400)

    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        var scroll = "inner scroll"
        if scrollView == outerScroll {
            scroll = "outer scroll"
        }
        print("\(scroll) offset:\(scrollView.contentOffset)")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

