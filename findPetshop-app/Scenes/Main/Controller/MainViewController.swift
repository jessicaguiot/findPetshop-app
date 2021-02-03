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
    
    let mainContentView = MainView()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    override func loadView() {
        
        self.view = mainContentView
        setupNavigationBar()
    }
    
    init(viewModel: MainViewModel) {
        
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupNavigationBar() {
        
        navigationController?.navigationBar.prefersLargeTitles      = true
        navigationController?.navigationBar.topItem?.title          = "Petshops"
        
        let mapButton                                               = UIBarButtonItem(image: UIImage(systemName: "map"), landscapeImagePhone: nil, style: .plain, target: self, action: nil)
        navigationItem.rightBarButtonItem                           = mapButton
        
        //add search bar item
        //let search = UISearchController(searchResultsController: nil)
        //self.navigationItem.searchController = search
    }
}
