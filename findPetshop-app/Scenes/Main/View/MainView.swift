//
//  MainView.swift
//  findPetshop-app
//
//  Created by Jéssica Araujo on 02/02/21.
//

import UIKit

class MainView: UIView, ViewCode {
    
    let mainTableView: UITableView = {
        
        let tableView                                           = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints     = false
        return tableView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    
        setupViewCode()
        setupTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
        self.backgroundColor = .white
    }
    
    func setHierarchy() {
        
        self.addSubview(mainTableView)
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
            
            mainTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            mainTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 0),
            mainTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: 0),
            mainTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 0)
        ])
    }
    
    private func setupTableView() {
        
        mainTableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.reuseIdentifier)
        mainTableView.dataSource    = self
        mainTableView.delegate      = self
        mainTableView.separatorStyle = .none
        //mainTableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        mainTableView.rowHeight = 95
    }

}

extension MainView: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.reuseIdentifier) as? MainTableViewCell else {
            
            return MainTableViewCell()
        }
        
        return cell
    }
}
