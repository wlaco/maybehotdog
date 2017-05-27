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
    var image = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
    }
    
    @IBAction func SeeIfHotdogTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated: true, completion: nil)

    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        
        performSegue(withIdentifier: "theSegue", sender: image)

        imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ResultsViewController
        
        nextVC.image = sender as? UIImage
        
    }
    
}

