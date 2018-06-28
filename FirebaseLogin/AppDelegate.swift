//
//  AppDelegate.swift
//  FirebaseLogin
//
//  Created by Giuseppe Sapienza on 06/07/16.
//  Copyright © 2016 Giuseppe Sapienza. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import FirebaseAuth

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        FirebaseApp.configure()
        
        switch Auth.auth().currentUser {
            
        case nil:
            
            print(" \n Current User is logged out \n  show LoginViewController \n")
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController")
            self.window?.rootViewController = vc
            
        default:
            
            print(" \n Current User is logged in \n show HomeViewController \n ")
            
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController")
            self.window?.rootViewController = vc
            
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {}

    func applicationDidEnterBackground(_ application: UIApplication) {}

    func applicationWillEnterForeground(_ application: UIApplication) {}

    func applicationDidBecomeActive(_ application: UIApplication) {}

    func applicationWillTerminate(_ application: UIApplication) {}


}

