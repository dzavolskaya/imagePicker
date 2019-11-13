//
//  ViewController.swift
//  DarApp
//
//  Created by Darya Zavolskaya on 07/11/2019.
//  Copyright © 2019 Darya Zavolskaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet var BackgroundView: UIView!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    @IBAction func green(_ sender: UISlider) {
        print(sender.value)
        BackgroundView.layer.backgroundColor = UIColor(red: CGFloat(sender.value), green: 0.5, blue: 0.5, alpha: 1.0).cgColor
    }
    
    @IBAction func ButtonDidTap(_ sender: Any) {
        let imageRef = UIImagePickerController()
        imageRef.delegate = self
        present(imageRef, animated: true, completion:  nil)
    }
    
    @IBAction func chooseParrots(_ sender: Any) {
        backgroundImage.image = UIImage (named: "parrots")
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        backgroundImage.image = info[UIImagePickerController.InfoKey.originalImage] as?UIImage
        picker.dismiss(animated: true, completion: nil)
    }
    
}

