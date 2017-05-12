//
//  ViewController.swift
//  Demo-PushAndPop
//
//  Created by 孙继刚 on 2017/5/5.
//  Copyright © 2017年 madordie. All rights reserved.
//

import UIKit

class ViewController: BViewController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        navigationBarHidden = true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if (touch?.location(in: view).y)! > view.center.y {
            navigationController?.pushViewController(ViewController3(nibName: nil, bundle: nil), animated: true)
        } else {
            navigationController?.pushViewController(VIewController2(nibName: nil, bundle: nil), animated: true)
        }
    }
}

