//
//  AppStartConfigurator.swift
//  iOSArchitecturesDemo
//
//  Created by ekireev on 19.02.2018.
//  Copyright © 2018 ekireev. All rights reserved.
//

import UIKit

final class AppStartManager {
    
    var window: UIWindow?
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        
        
        
        let rootVC = SearchModuleBuilder.build()
        let navVC = self.configuredNavigationController
        navVC.viewControllers = [rootVC]
        
        
        window?.rootViewController = navVC
        window?.makeKeyAndVisible()
        
   
        
        //        let rootVC = AppDetailViewController(app: app)
        //        let navVC = self.configuredNavigationController
        //        navVC.viewControllers = [rootVC]
        
        
        
    }
    
    private lazy var configuredNavigationController: UINavigationController = {
        let navVC = UINavigationController()
        navVC.navigationBar.barTintColor = UIColor.varna
        navVC.navigationBar.isTranslucent = false
        navVC.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navVC.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        return navVC
    }()
}
