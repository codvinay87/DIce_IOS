import UIKit

class ViewController: UIViewController {
    //IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtomPressed(_ sender: UIButton) {
        
        var diceArray = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),
                          UIImage(imageLiteralResourceName: "DiceThree"),
                          UIImage(imageLiteralResourceName: "DiceFour"),
                          UIImage(imageLiteralResourceName: "DiceFive"),
                          UIImage(imageLiteralResourceName: "DiceSix")
                         ]
        
        diceImageView1.image = diceArray.randomElement() //this is a inbuilt function of array
        diceImageView2.image = diceArray.randomElement()
    }
    

}

