//
//  ViewController.swift
//  Bullseye
//
//  Created by Jessica Peters on 12/23/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showHitMeAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Woot", style: .default, handler: nil)
     
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
//        print("The value of the slider is: \(slider.value) ")
        let roundedValue = slider.value.rounded()
//        print("The rounded value of the slider is: \(roundedValue) ")
        currentValue = Int(roundedValue)
    }
    
}

