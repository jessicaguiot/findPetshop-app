//
//  MainTableViewCell.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 03/02/21.
//

import UIKit

class MainTableViewCell: UITableViewCell, ViewCode {
    
    static let reuseIdentifier = "MainTableViewCell"
    
    let petshopImageView : UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "petshopImage")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let petshopNameLabel : UILabel = {
        
        let label = UILabel()
        label.text = "Petshop Pet"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SF Pro Display", size: 18)
        return  label
    }()
    
    let petshopDistanceLabel : UILabel = {
        
        let label = UILabel()
        label.text = "4.0km"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SF Pro Display", size: 12)
        return label
    }()
    
    let petshopRatingLabel : UILabel = {
        
        let label = UILabel()
        label.text = "5"
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "SF Pro Display", size: 12)
        return label
    }()
    
    let petshopRatingImageView : UIImageView = {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star")
        imageView.tintColor = .black
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViewCode()
    }
    
    required init?(coder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupView() {
        
        self.backgroundColor = .white
        self.layer.borderWidth = 0.5
        self.layer.borderColor = UIColor.gray.cgColor
    }
    
    func setHierarchy() {
        
        self.addSubview(petshopImageView)
        self.addSubview(petshopNameLabel)
        self.addSubview(petshopDistanceLabel)
        self.addSubview(petshopRatingImageView)
        self.addSubview(petshopRatingLabel)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            petshopImageView.heightAnchor.constraint(equalToConstant: 74),
            petshopImageView.widthAnchor.constraint(equalToConstant: 80),
            petshopImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            petshopImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            
            petshopNameLabel.leadingAnchor.constraint(equalTo: petshopImageView.trailingAnchor, constant: 15),
            petshopNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            petshopNameLabel.heightAnchor.constraint(equalToConstant: 22),
            petshopNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            petshopDistanceLabel.leadingAnchor.constraint(equalTo: petshopImageView.trailingAnchor, constant: 15),
            petshopDistanceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            petshopDistanceLabel.heightAnchor.constraint(equalToConstant: 15),
            petshopDistanceLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            petshopRatingImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -25),
            petshopRatingImageView.widthAnchor.constraint(equalToConstant: 20),
            petshopRatingImageView.heightAnchor.constraint(equalToConstant: 20),
            petshopRatingImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
            petshopRatingLabel.leadingAnchor.constraint(equalTo: petshopImageView.trailingAnchor, constant: 205),
            petshopRatingLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            petshopRatingLabel.heightAnchor.constraint(equalToConstant: 15),
            petshopRatingLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }

}
