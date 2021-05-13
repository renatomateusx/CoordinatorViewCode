//
//  ViewControllerCoordinator.swift
//  CoordinatorViewCode
//
//  Created by Renato Mateus on 13/05/21.
//

import UIKit

class ViewControllerCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private var viewController: ViewController?
    private var subscription: SubscriptionViewController?
    private var buy: BuyViewController?
    
    init(presenter: UINavigationController){
        self.presenter = presenter
    }
    
    func start() {
        let viewController = ViewController()
        viewController.delegate = self
        self.viewController = viewController
        
        self.presenter.pushViewController(viewController, animated: true)
    }
    
}

extension ViewControllerCoordinator: ViewControllerDelegate {
    
    func buySubscription(){
        let buy = BuyViewController()
        buy.delegate = self
        self.buy = buy
        self.presenter.pushViewController(buy, animated: true)
    }
    
    func createAccount(){
        let subscription = SubscriptionViewController()
        subscription.delegate = self
        self.subscription = subscription
        self.presenter.pushViewController(subscription, animated: true)
    }
}
