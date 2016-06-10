//
//  ViewController.swift
//  Diamond EYE
//
//  Created by Dmytro Aprelenko on 25.02.16.
//  Copyright © 2016 Dmytro Aprelenko. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
    
    // im just writing here smth
    var targetValue: Int = 0
    var currentValue: Int = 50
    var score = 0
    var round = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    @IBAction func startOverBut() {
        startNew()
        updateLabels()
    }
    
    
   @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)

    }
    
    func startNewRound() {
        round += 1
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }

    @IBAction func showAlert() {
        let difference = abs(targetValue - currentValue)
        var points = 100 - difference
        let title: String
        if difference == 0 {
            title = "Perfect!"
        points += 100
    }
    else if difference < 5 {
            if difference == 1 {
            points += 51
            }
        title = "You almost had it!"
        }
    
    else if difference < 10 {
    title = "Pretty good!"
    }
    else {
    title = "Not even close..."
    }

score += points


        let message = "You scored \(points) points"
        //"The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        //+ "\nThe difference is: \(difference)"
        
         let alert = UIAlertController (title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction (title: "OK", style: .Cancel, handler: { action in
            self.startNewRound()
            self.updateLabels()
            })

        
        alert.addAction(action)
       
        
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    func startNew () {
                round = 0
                score = 0
                startNewRound()
    }
        
        
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        startNew()
        updateLabels()
        
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, forState: .Normal)
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, forState: .Highlighted)
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        if let trackLeftImage = UIImage(named: "SliderTrackLeft") {
            let trackLeftResizable = trackLeftImage.resizableImageWithCapInsets(insets)
            slider.setMinimumTrackImage(trackLeftResizable, forState: .Normal)
        }
        if let trackRightImage = UIImage(named: "SliderTrackRight") {
            let trackRightResizable = trackRightImage.resizableImageWithCapInsets(insets)
            slider.setMaximumTrackImage(trackRightResizable, forState: .Normal)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    }

