//
//  ViewController.swift
//  diceApp
//
//  Created by Arman on 2022/06/11.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNum1: Int = 0
    var randomNum2: Int = 0
    
    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDices()
    }

    @IBAction func rollPressed(_ sender: UIButton) {
        updateDices()
    }
    
    func updateDices() {
        randomNum1 = Int(arc4random_uniform(6))
        randomNum2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceImages[randomNum1])
        diceImage2.image = UIImage(named: diceImages[randomNum2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDices()
    }
}

