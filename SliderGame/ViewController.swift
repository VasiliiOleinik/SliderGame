//
//  ViewController.swift
//  SliderGame
//
//  Created by Vasyl Oliinyk on 02.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
//    var sliderValue: Int = 0
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    var targetValue: Int = 0
    var score: Int = 0
    var round: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        let thumbImageHighlited = UIImage(named: "SliderThumb-Highlighted")
        let trackLeftImage = UIImage(named: "SliderTrackLeft")
        let trackRightImage = UIImage(named: "SliderTrackRight")
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        let resizableLeft = trackLeftImage?.resizableImage(withCapInsets: insets)
        let resizableRight = trackRightImage?.resizableImage(withCapInsets: insets)
        slider.setThumbImage(thumbImageNormal, for: .normal)
        slider.setThumbImage(thumbImageHighlited, for: .highlighted)
        slider.setMinimumTrackImage(resizableLeft, for: .normal)
        slider.setMaximumTrackImage(resizableRight, for: .normal)
        
        newRound()
    }
    
    @IBAction func restart() {
        score = 0
        round = 1
        newRound()
    }
    
    func newRound() {
        targetValue = Int.random(in: 1...100)
        targetLabel.text = "\(targetValue)"
        roundLabel.text = "\(round)"
        scoreLabel.text = "\(score)"
        slider.value = 50
        
        let transition = CATransition()
        transition.type = .fade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: .easeOut)
        view.layer.add(transition, forKey: nil)
        
    }

    @IBAction func showAlert() {
        let currentValue = lroundf(slider.value)
        let difference = abs(currentValue - targetValue)
        var currentScore = 100 - difference
        
        let title: String
        
        if difference == 0 {
            title = "Perfect!"
            currentScore += 100
        } else if difference < 5 {
            title = "Good!"
            if difference < 3 {
                currentScore += 50
            }
        } else if difference < 10 {
            title = "Not bad!"
        } else {
            title = "Try again...("
        }
        
        let message = "You scored: \(currentScore) points"
        
        let alertWindow = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let action = UIAlertAction(title: "Ok", style: .default, handler: { _ in
//            self.newRound()
//        })
        let action = UIAlertAction(title: "Ok", style: .default) { _ in
            self.newRound()
        }
        
        alertWindow.addAction(action)
        present(alertWindow, animated: true)
        
        score += currentScore
        round += 1
    }
    
//    @IBAction func sliderValueChange(_ slider: UISlider) {
//        sliderValue = lroundf(slider.value)
//    }

}

