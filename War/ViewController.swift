//
//  ViewController.swift
//  War
//
//  Created by Brian Ge on 5/28/16.
//  Copyright © 2016 Brian Ge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardIV: UIImageView!
    
    @IBOutlet weak var SecondCardIV: UIImageView!
    
    @IBOutlet weak var playRoundButton: UIButton!
    
    @IBOutlet weak var BackgroundIV: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    var playerScore: Int = 0
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    
    var enemyScore: Int = 0
    
    var cards = ["card2", "card3", "card4", "card5", "card6", "card7", "card8",
                    "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        let firstRand: Int = Int(arc4random_uniform(13))
        let secondRand: Int = Int(arc4random_uniform(13))
        FirstCardIV.image = UIImage(named: cards[firstRand])
        SecondCardIV.image = UIImage(named: cards[secondRand])
        
        if firstRand < secondRand {
            enemyScore += 1
            enemyScoreLabel.text = String(enemyScore)
        }
        else if firstRand > secondRand {
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
        }

    }

}