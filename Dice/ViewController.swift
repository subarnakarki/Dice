//
//  ViewController.swift
//  Dice
//
//  Created by subarna karki on 1/24/20.
//  Copyright © 2020 Subarna Karki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0;
    var randomDiceIndex2 : Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages () {
    diceImageView1.image =  UIImage(named: diceArray[rollDice()])
    diceImageView2.image =  UIImage(named: diceArray[rollDice()])
    }
    
    func rollDice() -> Int {
        let diceNumber = Int.random(in: 0 ..< 6)
        return diceNumber
    }
    
}

