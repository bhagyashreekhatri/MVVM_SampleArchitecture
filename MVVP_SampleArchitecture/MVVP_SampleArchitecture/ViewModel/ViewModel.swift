//
//  ViewModel.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import Foundation
import UIKit

/** Define a closure TYPE for updating a UIImageView once an image downloads.
 
 - parameter imageData: raw NSData making up the image
 */

public typealias ImageDownloadCompletionClosure = (_ imageData: NSData ) -> Void

// MARK: - App data through ViewModel

var receipeViewModel: [ReceipeViewModel] =
    [ReceipeViewModel(receipeDataModel: Receipe1),
     ReceipeViewModel(receipeDataModel: Receipe2),
     ReceipeViewModel(receipeDataModel: Receipe3),
     ReceipeViewModel(receipeDataModel: Receipe4),
     ReceipeViewModel(receipeDataModel: Receipe5)]

// MARK: - View Model

class ReceipeViewModel
{
    
    // I use some private properties solely for
    // preparing data for presentation in the UI.
    
    private let receipeDataModel: ReceipeDataModel
    
    private var imageURL: URL
    
    private var updatedDate: Date?
    
    init(receipeDataModel: ReceipeDataModel)
    {
        self.receipeDataModel = receipeDataModel
        self.imageURL = URL(string: receipeDataModel.imageLink)!
    }
    
    //  Data is made available for presentation only
    // through public getters. No direct access to Model.
    // Some getters prepare data for presentation.

    public var formalName: String {
        return "Title: " + receipeDataModel.title
    }
    
    public var commonName: String {
        return "Subtitle: " + receipeDataModel.subTitle
    }
    
    public var dateUpdated: String {
        
        let dateString = String(receipeDataModel.updateDate.year) + "-" +
                         String(receipeDataModel.updateDate.month) + "-" +
                         String(receipeDataModel.updateDate.day)
        
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = "yyyy-MM-dd"
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "MMMM dd, yyyy"
        
        if let date = dateFormatterGet.date(from: dateString) {
            updatedDate = date
            return "Updated: " + dateFormatterPrint.string(from: date)
        }
        else {
            return "There was an error decoding the string"
        }
    }
    
    public var textDescription: NSAttributedString {
        
        let fontAttributes = [NSAttributedString.Key.font:  UIFont(name: "Georgia", size: 14.0)!, NSAttributedString.Key.foregroundColor: UIColor.blue]
        let markedUpDescription = NSAttributedString(string: receipeDataModel.description, attributes:fontAttributes)
        return markedUpDescription
        
    }
    
    public var thumbnail: String {
        return receipeDataModel.thumbnail
    }
    
    
    func download(completionHanlder: @escaping ImageDownloadCompletionClosure)
    {
        
        let sessionConfig = URLSessionConfiguration.default
        let session = URLSession(configuration: sessionConfig)
        let request = URLRequest(url:imageURL)
        
        let task = session.downloadTask(with: request) { (tempLocalUrl, response, error) in
            
            if let tempLocalUrl = tempLocalUrl, error == nil {
                if let statusCode = (response as? HTTPURLResponse)?.statusCode {
                    let rawImageData = NSData(contentsOf: tempLocalUrl)
                    completionHanlder(rawImageData!)
                    print("Successfully downloaded. Status code: \(statusCode)")
                }
            } else {
                print("Error took place while downloading a file. Error description: \(String(describing: error?.localizedDescription))")
            }
        } // end let task
        
        task.resume()
        
    } // end func download

} // end class ReceipeViewModel
