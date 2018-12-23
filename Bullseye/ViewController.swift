//
//  ViewController.swift
//  Bullseye
//
//  Created by Jessica Peters on 12/23/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showHitMeAlert() {
       
        let alert = UIAlertController(title: "Hello, World", message: "This is not my first app! ;)", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Woot", style: .default, handler: nil)
     
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

