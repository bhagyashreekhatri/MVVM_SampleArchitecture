//
//  ViewController.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import UIKit

// MARK: - View Controller

class ViewController: UIViewController {
            
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailSegue" {
            
            if let destinationViewController = segue.destination as? DetailViewController
            {
                let indexPath = self.tableView.indexPathForSelectedRow!
                let index = indexPath.row
                // The ViewModel is the app's de facto data source.
                // The ViewModel data for the currently-selected table
                // view cell representing a Receipe object is passed to
                // a detail view controller via a segue.
                destinationViewController.receipeViewModel = receipeViewModel[index]
            }
        }
        
    } // end func prepare

} // end class ViewController
