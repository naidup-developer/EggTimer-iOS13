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
    
    @IBAction func onClick(_ sender: UIButton)
    {
        switch sender.currentTitle {
        case "Soft":
            print(softCooked)
            break
        case "Medium":
            print(mediumCooked)
            break
        case "Hard":
            print(hardCooked)
            break
        default:
            break
        }
    }
}
