//
//  BuyViewController.swift
//  CoordinatorViewCode
//
//  Created by Renato Mateus on 13/05/21.
//

import UIKit

class BuyViewController: UIViewController {
    weak var delegate: ViewControllerDelegate?
    
    private let labelPage: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textColor = .white
        label.text = "Buy Controller"
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        configureView()
    }
    
    private func configureView(){
        view.addSubview(labelPage)
        labelPage.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)
    }
}
