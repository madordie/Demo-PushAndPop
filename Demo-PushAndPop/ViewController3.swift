//
//  ViewController3.swift
//  Demo-PushAndPop
//
//  Created by 孙继刚 on 2017/5/5.
//  Copyright © 2017年 madordie. All rights reserved.
//

import UIKit

class ViewController3: BViewController {
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        navigationBarHidden = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellow
    }
}
