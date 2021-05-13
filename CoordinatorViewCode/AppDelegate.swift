//
//  AppDelegate.swift
//  CoordinatorViewCode
//
//  Created by Renato Mateus on 13/05/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var applicationCoordinator: ApplicationCoordinator?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let appCoordinator = ApplicationCoordinator(window: window)
        self.window = window
        self.applicationCoordinator = appCoordinator
        
        appCoordinator.start()

        return true
    }


}

