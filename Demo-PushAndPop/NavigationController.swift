//
//  NavigationController.swift
//  Demo-PushAndPop
//
//  Created by 孙继刚 on 2017/5/12.
//  Copyright © 2017年 madordie. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override var childViewControllerForStatusBarStyle: UIViewController? {
        return topViewController
    }
}
