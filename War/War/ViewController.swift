//
//  ViewController.swift
//  War
//
//  Created by Justin on 5/16/16.
//  Copyright © 2016 Justin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCard: UIImageView!
    @IBOutlet weak var secondCard: UIImageView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var deal: UIButton!
    
    @IBOutlet weak var enemyScoreLabel: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    
    var player:Int = 0
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

    @IBAction func PlayRoundTapped(sender: UIButton) {
        
        //Random number for first image view
        let firstRandomNumber:Int = Int(arc4random_uniform(13))
        let firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        //Random number for second
        let secondRandomNumber:Int = Int(arc4random_uniform(13))
        let secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        //Change the cards
        self.firstCard.image = UIImage(named: firstCardString)
        self.secondCard.image = UIImage(named: secondCardString)
        
        //Determine Higher card
        
        if firstRandomNumber > secondRandomNumber {
            self.player += 1
        }
        else if firstRandomNumber == secondRandomNumber {
        }
        else{
            self.enemyScore += 1
        }
    }

}

