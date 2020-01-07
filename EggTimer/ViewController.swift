//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var softCooked = 5
    var mediumCooked = 8
    var hardCooked = 12
    
    var eggTimes = ["Soft" : 5, "Medium" : 8, "Hard" : 12]
    
    @IBAction func onClick(_ sender: UIButton)
    {
        print(eggTimes[sender.currentTitle!]!)
        
//        switch sender.currentTitle {
//        case "Soft":
//            print(eggTimes.index(forKey: "soft") as Any)
//            break
//        case "Medium":
//            print(eggTimes.index(forKey: "medium") as Any)
//            break
//        case "Hard":
//            print(eggTimes.index(forKey: "hard") as Any)
//            break
//        default:
//            break
//        }
    }
}
