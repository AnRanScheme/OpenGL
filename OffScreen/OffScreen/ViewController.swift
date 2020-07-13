//
//  ViewController.swift
//  OffScreen
//
//  Created by Jonathan on 2020/7/8.
//  Copyright © 2020 Binance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let btn0 = UIButton(type: .custom)
//        btn0.frame = CGRect(x: 100, y: 60, width: 100, height: 100)
//        //设置圆角
//        btn0.layer.cornerRadius = 50
//        //设置border宽度和颜色
//        btn0.layer.borderWidth = 2
//        btn0.layer.borderColor = UIColor.red.cgColor
//        self.view.addSubview(btn0)
        //        //设置背景图片
        //        btn0.setImage(UIImage(named: "picture"), for: .normal)
        //        btn0.backgroundColor = UIColor.blue
        
//        let btn0 = UIButton(type: .custom)
//        btn0.frame = CGRect(x: 100, y: 60, width: 100, height: 100)
//        //设置圆角
//        btn0.layer.cornerRadius = 50
//        //设置border宽度和颜色
//        btn0.layer.borderWidth = 2
//        btn0.layer.borderColor = UIColor.red.cgColor
//        btn0.layer.masksToBounds = true
//        self.view.addSubview(btn0)
//        //设置背景图片
//        btn0.setImage(UIImage(named: "picture"), for: .normal)
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.backgroundColor = UIColor.blue
        // 设置边框宽度和颜色
        view.layer.borderWidth = 2.0
        view.layer.borderColor = UIColor.black.cgColor
        // 设置圆角
        view.layer.cornerRadius = 100.0
        // 设置裁剪
        view.clipsToBounds = true
        
        let subView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        subView.backgroundColor = UIColor.red
        // 设置边框宽度和颜色
        subView.layer.borderWidth = 2.0
        subView.layer.borderColor = UIColor.black.cgColor
        // 设置内容
        subView.layer.contents = UIImage(named: "picture")?.cgImage
        subView.layer.borderWidth = 2.0
        subView.layer.borderColor = UIColor.black.cgColor
        view.addSubview(subView)
        
        view.center = self.view.center;
        self.view.addSubview(view)
        
    }

}

