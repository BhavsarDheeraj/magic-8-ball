//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Dheeraj Bhavsar on 12/12/17.
//  Copyright © 2017 Dheeraj Bhavsar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //creating array of ball names
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var ballIndex : Int = 0
    
    //connection to image view
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallGenerator()
        
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
    //button pressed to ask question
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        randomBallGenerator()
        
    }
    
    //random ball generator function
    func randomBallGenerator() {
        
        ballIndex = Int(arc4random_uniform(5))                      //generating random number
        ballImage.image = UIImage(named: ballArray[ballIndex])      //assigning random index ball to image view
        
    }
    
    
    
    //random ball generation by shaking the phone
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomBallGenerator()
    }
    
}

