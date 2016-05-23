//
//  ViewController.swift
//  War
//
//  Created by Luke Petruzzi on 5/17/16.
//  Copyright © 2016 Luke Petruzzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets to components of view
    @IBOutlet weak var backgroundImageView: UIView!
    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    
    // Scorekeeping
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0
   
    // Connect to card names from attributes
    let cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "king", "queen", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Handle when a user clicks the playRoundButton.
    @IBAction func playRoundTapped(sender: AnyObject) {
        // Randomize number for first card
        let random1 = Int(arc4random_uniform(13))
        // Set the image for the first card
        self.firstCardImageView.image = UIImage(named: self.cardNamesArray[random1])

        // Randomize number for second card
        let random2 = Int(arc4random_uniform(13))
        // Set the image for the second card
        self.secondCardImageView.image = UIImage(named: self.cardNamesArray[random2])
        
        // First card wins
        if random1 > random2
        {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        // Cards tie
        else if random1 == random2 {
            // Do nothing
        }
        // Second card wins
        else
        {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
        
    }
}

