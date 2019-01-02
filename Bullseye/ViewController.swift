//
//  ViewController.swift
//  Bullseye
//
//  Created by Jessica Peters on 12/23/18.
//  Copyright © 2018 Jessica Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewGame()
    }

    @IBAction func showHitMeAlert() {
        
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        score += points
        
        // Updates the Title text depending on how close the player was to the target and gives the player and extra 100 points for a bullseye and 50 if they are off by 1.
        let title: String
        if difference == 0 {
            title = "Bullseye!!"
            points += 100
        } else if difference < 5 {
            title = "You were really close!"
            if difference == 1 {
            points += 50
            }
        } else if difference < 10 {
            title = "Not Bad!"
        } else {
            title = "Nope...not even close."
        }
        
        
        // Alert box settings
        let message = "You scored \(points) points!"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Woot", style: .default, handler: {
            action in
            self.startNewRound()
        })
     
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
       
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        round += 1
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = "\(targetValue)"
        scoreLabel.text = "\(score)"
        roundLabel.text = "\(round)"
    }
    
    func startNewGame() {
        score = 0
        round = 0
        startNewRound()
    }
    
    // Will add additional functionality for user stats etc. in future
    @IBAction func newGameButtonPressed(_ sender: Any) {
        startNewGame()
    }
    
}

