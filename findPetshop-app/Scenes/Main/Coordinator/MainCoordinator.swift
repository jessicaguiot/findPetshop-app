//
//  MainCoordinator.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 02/02/21.
//

import UIKit

class MainCoordinator:  Coordinator   {
    
    var rootViewController: UIViewController {
        return mainViewController
    }
    
    var mainViewController: MainViewController
    
    init() {
        
        let viewModel = MainViewModel()
        mainViewController = MainViewController(viewModel: viewModel)
        mainViewController.mainCoordinator = self
    }
}
