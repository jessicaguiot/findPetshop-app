//
//  MainView.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 02/02/21.
//

import UIKit

class MainView: UIView, ViewCode {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        self.backgroundColor = .black
    }
    
    func setHierarchy() {
        //
    }
    
    func setConstraints() {
        //
    }

}
