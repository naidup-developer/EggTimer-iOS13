//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    @IBOutlet weak var progress: UIProgressView!
    
    @IBOutlet weak var label: UILabel!
    
    var eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    
    var secondsRemaining : Int?
    
    var timer = Timer()
    
    var totalTime = 0
    var secondspassed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progress.progress = 0.0
    }
    
    
    
    @IBAction func onClick(_ sender: UIButton)
    {
        
        //player.stop()
        timer.invalidate()
        totalTime = eggTimes[sender.currentTitle!]!
        progress.progress = 0.0
        secondspassed = 0
        label.text = sender.currentTitle
        
       timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true )
        
        
        
        
    }
    
    @objc func UpdateTimer() 
    {
        if secondspassed < totalTime
        {
            secondspassed += 1
            let percentageProgress = Float(secondspassed) / Float(totalTime)
            
            print(percentageProgress)
            progress.progress = percentageProgress
            
        }else
        {
            timer.invalidate()
            label.text = "Done..!!!"
            
            //MARK:- Audio Play
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: ".mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
    }
}
