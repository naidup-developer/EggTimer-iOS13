//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    var eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var secondsRemaining : Int?
    
    var timer = Timer()
    
    @IBAction func onClick(_ sender: UIButton)
    {
        timer.invalidate()
        secondsRemaining = eggTimes[sender.currentTitle!]
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true )
        
        
        
    }
    
    @objc func UpdateTimer() 
    {
        if secondsRemaining! > 0
        {
            print("\(secondsRemaining ?? 0) Seconds Remaining")
            label.text = "wait for \(secondsRemaining ?? 0) Seconds"
            secondsRemaining! -= 1
        }else
        {
            timer.invalidate()
            label.text = "Done..!!!"
        }
    }
}
