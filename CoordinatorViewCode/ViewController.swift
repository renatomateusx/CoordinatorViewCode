//
//  ViewController.swift
//  CoordinatorViewCode
//
//  Created by Renato Mateus on 13/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    weak var delegate: ViewControllerDelegate?

    override func viewDidLoad() {
            super.viewDidLoad()
            self.configureView()
    }
    
    private let buttonBuy: UIButton = {
       let button = UIButton()
        button.setTitle("Buy", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.addTarget(self, action: #selector(didTapBuyButton), for: .touchUpInside)
        button.backgroundColor = .red
        return button
    }()
    
    private let buttonAccount: UIButton = {
       let button = UIButton()
        button.setTitle("Account", for: .normal)
        button.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.backgroundColor = .orange
        return button
    }()
    
    
    func configureView(){
        view.addSubview(buttonAccount)
      
        buttonAccount.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16, height: 50)
        
        
        view.addSubview(buttonBuy)
        buttonBuy.anchor(top: buttonAccount.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16, height: 50)
        
    }
    
    @objc func didTapBuyButton(){
        delegate?.buySubscription()
    }

    
    
    @objc func didTapCreateAccount(){
        delegate?.createAccount()
    }


}

