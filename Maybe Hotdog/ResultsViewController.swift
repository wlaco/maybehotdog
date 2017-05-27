//
//  ResultsViewController.swift
//  Maybe Hotdog
//
//  Created by Will Laco on 5/26/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var image : UIImage?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        
        label.textColor = UIColor.red
//        label.shadowColor = UIColor.black
        
        
    }

    
}
