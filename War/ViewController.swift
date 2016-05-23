//
//  ViewController.swift
//  War
//
//  Created by Joe Salter on 5/21/16.
//  Copyright © 2016 Joe Salter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore = 0
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Select two random cards every time "Play" button is tapped
    @IBAction func playRoundTapped(sender: UIButton) {
        // Get first card
        let randomNumberOne = Int(arc4random_uniform(13))
        let cardOne:String = self.cardNamesArray[randomNumberOne]
        
        // Get second card
        let randomNumberTwo = Int(arc4random_uniform(13))
        let cardTwo:String = self.cardNamesArray[randomNumberTwo]
        
        // Set the card images
        self.firstCardImageView.image  = UIImage(named: cardOne)
        self.secondCardImageView.image = UIImage(named: cardTwo)
        
        // Keep score
        if randomNumberOne > randomNumberTwo {
            self.playerScore += 1
            self.playerScoreLabel.text = String(playerScore)
        }
            
        else if randomNumberOne == randomNumberTwo {
            // Do nothing
        }
        else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(enemyScore)
        }
    }

}

