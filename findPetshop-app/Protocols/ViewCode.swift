//
//  ViewCode.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 02/02/21.
//

import Foundation

protocol ViewCode {
    
    func setupViewCode()
    func setupView()
    func setHierarchy()
    func setConstraints()
}

extension ViewCode {
    
    func setupViewCode() {
        
        setupView()
        setHierarchy()
        setConstraints()
    }
}
