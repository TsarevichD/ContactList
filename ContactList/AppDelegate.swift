//
//  AppDelegate.swift
//  ContactList
//
//  Created by macbook on 04.07.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let contactListVC = ContactListVC()
        let nc = UINavigationController(rootViewController: contactListVC)
        window?.rootViewController = nc
        
        
        return true
    }


}

