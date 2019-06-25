//
//  AboutAppViewController.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import UIKit

class AboutAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func guidelinesButtonTapped(_ sender: Any) {
        
        if let url = URL(string: "https://www.delish.com/cooking/recipe-ideas/a20151723/easy-chicken-tikka-masala-recipe/") {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
