//
//  ViewController.swift
//  War
//
//  Created by David Wallach on 6/15/16.
//  Copyright © 2016 David Wallach. All rights reserved.
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
    
    var cardNamesArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        
        let firstRandomNum = Int(arc4random_uniform(13))
        let secondRandNum = Int(arc4random_uniform(13))
        let cardOneName = self.cardNamesArray[firstRandomNum]
        let cardTwoName = self.cardNamesArray[secondRandNum]
        self.firstCardImageView.image = UIImage(named: cardOneName)
        self.secondCardImageView.image = UIImage(named: cardTwoName)
        
        if firstRandomNum > secondRandNum {
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)
        }
        else if firstRandomNum == secondRandNum {
            
        } else {
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
        }
    }

}

