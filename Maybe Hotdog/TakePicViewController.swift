//
//  ViewController.swift
//  Maybe Hotdog
//
//  Created by Will Laco on 5/26/17.
//  Copyright © 2017 Will Laco. All rights reserved.
//

import UIKit

class TakePicViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    var image : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self

        }

    @IBAction func SeeIfHotdogTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)
        
        performSegue(withIdentifier: "theSegue", sender: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ResultsViewController
        
        nextVC.imageView.image? = image

    }

}

