//
//  ViewController.swift
//  War
//
//  Created by Larissa Clopton on 6/9/16.
//  Copyright © 2016 Larissa Clopton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create IBOutlets for elements on the storyboard
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!

    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore: Int = 0
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore: Int = 0
    
    // define an array of card names
    var cardNamesArray: [String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // randomize the first number
        let firstRandomNumber: Int = Int(arc4random_uniform(13))
        
        // pick string based on the first random number
        let firstCardString: String = self.cardNamesArray[firstRandomNumber]
        
        // set first card to image corresponding to first string
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // randomize the second number
        let secondRandomNumber: Int = Int(arc4random_uniform(13))
        
        // pick string based on the second random number
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // set second card to image corresponding to second string
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        // determine the winner
        if firstRandomNumber > secondRandomNumber {
                self.playerScore += 1
                self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNumber == secondRandomNumber {
                // a tie, do nothing
        }
        else {
                self.enemyScore += 1
                self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

