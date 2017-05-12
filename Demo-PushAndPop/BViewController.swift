//
//  BViewController.swift
//  Demo-PushAndPop
//
//  Created by 孙继刚 on 2017/5/5.
//  Copyright © 2017年 madordie. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    var navigationBarHidden = false

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        //   侧滑返回
        if navigationController?.viewControllers.count ?? 0 > 1 {
            navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        } else {
            navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        }
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        guard let navigationController = navigationController  else {
            return
        }
        if navigationController.isNavigationBarHidden != navigationBarHidden {
            navigationController.setNavigationBarHidden(navigationBarHidden, animated: animated)
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        guard let navigationController = navigationController  else {
            return
        }
        guard let last = navigationController.viewControllers.last as? BViewController else {
            return
        }
        if last.navigationBarHidden != navigationBarHidden {
            navigationController.setNavigationBarHidden(last.navigationBarHidden, animated: animated)
        }
    }
}
