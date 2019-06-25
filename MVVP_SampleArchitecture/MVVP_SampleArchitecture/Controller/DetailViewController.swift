//
//  DetailViewController.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import UIKit

// MARK: - Detail View Controller

class DetailViewController: UIViewController {
    
    var receipeViewModel: ReceipeViewModel?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var updatedLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var activitySpinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        imageView.alpha = 0.0
        
        // Define a closure (completion block) INSTANCE for updating a UIImageView
        // once an image downloads. Added capture list to prevent retain cycles.
        let imageCompletionClosure = { [unowned self] ( imageData: NSData ) -> Void in
            
            // Download occurs on background thread, but UI update
            // MUST occur on the main thread.
            DispatchQueue.main.async {
                
                // Animate the appearance of the Receipe image.
                UIView.animate(withDuration: 1.0, animations: {
                    self.imageView.alpha = 1.0
                    self.imageView?.image = UIImage(data: imageData as Data)
                    self.view.setNeedsDisplay()
                })
                
                // Stop and hide the activity spinner as the
                // image has finished downloading
                self.activitySpinner.stopAnimating()
                
            } // end DispatchQueue.main.async
            
        } // end let imageCompletionClosure...
        
        // Start and show the activity spinner as the
        // image is about to start downloading in background.
        activitySpinner.startAnimating()
        
        // Update the UI with info from the Receipe object
        // the user chose to inspect.
        titleLabel.text = receipeViewModel?.formalName
        subtitleLabel.text = receipeViewModel?.commonName
        updatedLabel.text = receipeViewModel?.dateUpdated
        descriptionTextView.attributedText = receipeViewModel?.textDescription
        
        // Start image downloading in background.
        receipeViewModel?.download(completionHanlder: imageCompletionClosure)
        
    } // end func viewDidLoad
    
    // print deallocation to make sure closure isn't
    // causing a retain cycle
    deinit {
       print("Class instance deinitialized")
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        // make sure UITextView shows beginning
        // of Receipe object description
        self.descriptionTextView.setContentOffset(CGPoint.zero, animated: false)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

} // end class DetailViewController
