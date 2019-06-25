//
//  VC-Extension+TableViewDataSource.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import Foundation

import UIKit

// MARK: - UITableView Data Source

extension ViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receipeViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        // The ViewModel is the app's de facto data source.
        tableViewCell?.imageView?.image = UIImage(named: receipeViewModel[indexPath.row].thumbnail)
        tableViewCell?.textLabel?.text = receipeViewModel[indexPath.row].formalName
        tableViewCell?.detailTextLabel?.text = receipeViewModel[indexPath.row].commonName
        
        return tableViewCell!
    }
    
} // end extension ViewController : UITableViewDataSource
