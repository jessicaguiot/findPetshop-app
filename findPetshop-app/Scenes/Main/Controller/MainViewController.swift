//
//  MainViewController.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 02/02/21.
//

import UIKit

class MainViewController: UIViewController {
    
    var viewModel: MainViewModel
    var mainCoordinator: MainCoordinator? 
    
    let contentView = MainView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        self.view = contentView
    }
    
    init(viewModel: MainViewModel) {
        
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
