//
//  AppDelegate.swift
//  GradientNavigationBar
//
//  Created by Bell App Lab on 08/11/2016.
//  Copyright (c) 2016 Bell App Lab. All rights reserved.
//

import UIKit
import GradientNavigationBar


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        GradientNavigationBar.appearance().colors = [UIColor.brownColor(), UIColor.blueColor()]
        GradientNavigationBar.appearance().startPoint = CGPointZero
        GradientNavigationBar.appearance().endPoint = CGPoint(x: 1, y: 1)
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window?.backgroundColor = UIColor.whiteColor()
        
        let navController = UINavigationController(navigationBarClass: GradientNavigationBar.classForCoder(), toolbarClass: nil)
        navController.viewControllers = [UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController()!]
        
        self.window?.rootViewController = navController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

