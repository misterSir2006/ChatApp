//
//  AppDelegate.swift
//  tChat
//
//  Created by Илья Шахназаров on 15.09.2020.
//  Copyright © 2020 PentaBob. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var rootAssembly = RootAssembly()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = rootAssembly.presentationAssembly.mainNavigationController()
        
        #if DEBUG
            print("finishLaunching")
        #endif

        return true
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        #if DEBUG
            print("willEnterForeground")
        #endif
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        #if DEBUG
            print("didBecomeActive")
        #endif
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        #if DEBUG
            print("willResignActive")
        #endif
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        #if DEBUG
            print("didEnterBackground")
        #endif
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        #if DEBUG
            print("willTerminate")
        #endif
    }

}

