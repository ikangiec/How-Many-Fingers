//
//  ViewController.swift
//  How Many Fingers
//
//  Created by K C on 11/12/14.
//  Copyright (c) 2014 K C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        var numberOfFingers = arc4random() % 6
        
        println(numberOfFingers)
        
        var numberOfFingersString = String(numberOfFingers)
        
        if numberOfFingersString==guess.text {
            message.text = "You got it right!"
        } else {
            if (numberOfFingers <= 1) {
                message.text = "That wasn't right - I was holding up \(numberOfFingers) finger, Try again!"
            }
            else {
                message.text = "That wasn't right - I was holding up \(numberOfFingers) fingers, Try again!"
            }
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

