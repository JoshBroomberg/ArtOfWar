//
//  ViewController.swift
//  War
//
//  Created by Sam on 6/21/16.
//  Copyright © 2016 Sam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    
    @IBOutlet weak var secondCardImageView: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    
    var playerScore: Int = 0
    var enemyScore: Int = 0
    
    
    
    var cardNamesArray: [String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7",
                                   "card8", "card9", "card10", "card11", "card12", "card13"]
                                   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


 
    @IBAction func playRoundTapped(sender: UIButton) {
        
        // Randomize a number for the first imageview
        let firstRandomNumber = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        
        
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        // Set the first card image view to the asset corresponding to the randomized
        // number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // etc
        let secondRandomNumber = Int(arc4random_uniform(13))
        
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        
        // determine the winner
        if firstRandomNumber > secondRandomNumber {
            
            // TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        
        else if firstRandomNumber == secondRandomNumber {
            
            
            
        }
        
        else {
            
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
        
    }

    
}

