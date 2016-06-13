//
//  ViewController.swift
//  War
//
//  Created by Daniel Seong on 6/11/16.
//  Copyright © 2016 Daniel Seong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScoreLabel: UILabel!
    var playerScore:Int = 0
    @IBOutlet weak var enemyScoreLabel: UILabel!
    var enemyScore:Int = 0 
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        // generate random number from 1 - 13
        let firstrandomnumber: Int = Int(arc4random_uniform(13))
        
        // format string with card and random number
        let firstcardstring = self.cardNamesArray[firstrandomnumber]
        
        //firstCardImageView is an object that has an image property that accepts UIImage objects
        // change image to randomized card image
        self.firstCardImageView.image = UIImage(named: firstcardstring)
        
        // do same for second card
        let secondrandomnumber: Int = Int(arc4random_uniform(13))
        let secondcardstring = self.cardNamesArray[secondrandomnumber]
        self.secondCardImageView.image = UIImage(named: secondcardstring)
        
        // determine higher card 
        if firstrandomnumber > secondrandomnumber
        {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstrandomnumber == secondrandomnumber
        {
            
        }
        else
        {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

