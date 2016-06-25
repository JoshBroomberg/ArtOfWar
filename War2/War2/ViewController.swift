//
//  ViewController.swift
//  War2
//
//  Created by Riley Pacella on 6/20/16.
//  Copyright © 2016 RileyPacella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardViewImage: UIImageView!
    @IBOutlet weak var secondCardViewImage: UIImageView!
    @IBOutlet weak var backgroundViewImage: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    
    
    @IBOutlet weak var player1Label: UILabel!
    // initialize p1 score to 0
    var player1Score: Int = 0
 
    @IBOutlet weak var player2Label: UILabel!
    // initialize p2 score to 0
    var player2Score: Int = 0

    // Array for card names
    var cardNamesArray = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // make first random number
        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        //access name in array that that random number matches
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        
        // set first view image card to that random image
        self.firstCardViewImage.image = UIImage(named: firstCardString)
        
        // make second random number for second image view
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        //access name in array that that random number matches
        let secondCardString: String = self.cardNamesArray[secondRandomNumber]
        
        // set second view image card to that random image
        self.secondCardViewImage.image = UIImage(named: secondCardString)
        
        
        // Determining Scoring
        
        if (firstRandomNumber > secondRandomNumber) { // If p1 card is higher than p2 card
            
            self.player1Score += 1 // p1 gets a point
            self.player1Label.text = String(player1Score) // display point as text
        }
            
        else if (firstRandomNumber == secondRandomNumber) { //If cards match, neither gets a point
            
                //Do Nothing
        }
            
        else {
        
            // if p2 card is higher than p1 card
            
            self.player2Score += 1 //p2 gets a point
            self.player2Label.text = String(player2Score) // display point as text
        }
        
    }

}

