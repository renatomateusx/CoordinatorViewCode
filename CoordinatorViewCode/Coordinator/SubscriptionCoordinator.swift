//
//  SubscriptionCoordinator.swift
//  CoordinatorViewCode
//
//  Created by Renato Mateus on 13/05/21.
//

import UIKit

class SubscriptionCoordinator: Coordinator {
    
    private let window: UIWindow
    private let rootViewController: UINavigationController
    private var viewController: ViewControllerCoordinator?
    
    
    init(window: UIWindow){
        self.window = window
        rootViewController = UINavigationController()
        rootViewController.navigationBar.prefersLargeTitles = true
        
        viewController = ViewControllerCoordinator(presenter: rootViewController)
    }
    
    func start() {
        window.rootViewController = rootViewController
        viewController?.start()
        window.makeKeyAndVisible()
    }
    
}
