//
//  AppDelegate.swift
//  EditorJSKit
//
//  Created by Ivan Glushko on 06/12/2019.
//  Copyright (c) 2019 Ivan Glushko. All rights reserved.
//

import UIKit
import EditorJSKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow? = UIWindow()
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setupEJStyles()
        
        window?.makeKeyAndVisible()
        window?.rootViewController = ViewController()
        return true
    }
    
    func setupEJStyles() {
        let ejKit = EJKit.shared
        ejKit.style.setStyle(style: HeaderStyle(), for: EJNativeBlockType.header)
        ejKit.style.setStyle(style: ImageBlockStyle(), for: EJNativeBlockType.image)
        ejKit.style.setStyle(style: LinkBlockStyle(), for: EJNativeBlockType.linkTool)
    }
}
