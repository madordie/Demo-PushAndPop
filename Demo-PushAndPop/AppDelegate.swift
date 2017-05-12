//
//  AppDelegate.swift
//  Demo-PushAndPop
//
//  Created by 孙继刚 on 2017/5/5.
//  Copyright © 2017年 madordie. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = NavigationController(rootViewController: ViewController(nibName: nil, bundle: nil))
        window?.makeKeyAndVisible()

        return true
    }

}

