//
//  ViewController.swift
//  War
//
//  Created by Marky Pertsemlides on 6/9/16.
//  Copyright © 2016 Marky Pertsemlidis. All rights reserved.
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
        
        //Randomize a number for the first image view
        let firstRandNum:Int = Int(arc4random_uniform(13))
        //Construct string with the rand num
        let firstCardString:String = self.cardNamesArray[firstRandNum]
        
        //Set the first card image view to the asset corresponding to the rand num
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        
        //Randmomize a number for the second image view
        let secRandNum:Int = Int(arc4random_uniform(13))
        //Construct string eith the rand num
        let secCardString:String = self.cardNamesArray[secRandNum]
        
        //Set the second card image view to the asset corresponding to the rand num
        self.secondCardImageView.image = UIImage(named: secCardString)
    
        //Determine the higher card
        if firstRandNum > secRandNum {
            //TODO: first card is larger
            self.playerScore += 1
            self.playerScoreLabel.text = String(self.playerScore)

        } else if firstRandNum < secRandNum{
            //TODO: second card is larger (if its a tie we ignore it)
            self.enemyScore += 1
            self.enemyScoreLabel.text = String(self.enemyScore)
            
        }
    
    }

}

