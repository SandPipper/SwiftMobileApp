//
//  AppDelegate.swift
//  FoodTaskerMobile
//
//  Created by Alexander Kulyk on 14.07.2018.
//  Copyright © 2018 Alexander Kulyk. All rights reserved.
//

import UIKit
import FBSDKCoreKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 0.19, green: 0.18, blue: 0.31, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        return FBSDKApplicationDelegate.sharedInstance().application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
    }
    
    private func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : String] = [:]) -> Bool {
        return FBSDKApplicationDelegate.sharedInstance().application(
            app,
            open: url,
            sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication],
            annotation: nil
        )
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        FBSDKAppEvents.activateApp()
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

