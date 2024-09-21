//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image=UIImage(imageLiteralResourceName:"DiceSix")
//        diceImageView1.alpha=0.5
     //   WHO   WHAT   VALUE
        diceImageView2.image=UIImage(imageLiteralResourceName: "DiceTwo")
    }
    
    
    @IBAction func rollButtomPressed(_ sender: UIButton) {
        diceImageView1.image = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
         UIImage(imageLiteralResourceName: "DiceSix")
        ][leftDiceNumber]
        
        diceImageView2.image = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),
         UIImage(imageLiteralResourceName: "DiceThree"),
         UIImage(imageLiteralResourceName: "DiceFour"),
         UIImage(imageLiteralResourceName: "DiceFive"),
         UIImage(imageLiteralResourceName: "DiceSix")
        ][rightDiceNumber]
        
        leftDiceNumber+=1
        rightDiceNumber-=1
    }
    

}

