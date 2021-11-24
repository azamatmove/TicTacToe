//
//  ViewController.swift
//  TicTacToeStrbrd
//
//  Created by Azamat Sarinzhiev on 18/11/21.
//

import UIKit

class ViewController: UIViewController {
    
    var nextStep = true
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var fourthButton: UIButton!
    
    @IBOutlet weak var fifthButton: UIButton!
    
    @IBOutlet weak var sixthButton: UIButton!
    
    @IBOutlet weak var seventhButton: UIButton!
    
    @IBOutlet weak var eighthButton: UIButton!
    
    @IBOutlet weak var ninethButton: UIButton!
    
    @IBAction func clickButton(_ sender: UIButton) {
        if sender.titleLabel?.text == "TicTacToe" {
            if nextStep {
                nextStep = false
                
                sender.setTitle("X", for: .normal)
                
            } else {
                nextStep = true
                
                sender.setTitle("O", for: .normal)
            }
        }
        checkWin()
}
    
    func checkWin() {
        if (firstButton.titleLabel?.text == "X" && secondButton.titleLabel?.text == "X" && thirdButton.titleLabel?.text == "X") || (fourthButton.titleLabel?.text == "X" && fifthButton.titleLabel?.text == "X" && sixthButton.titleLabel?.text == "X") || (seventhButton.titleLabel?.text == "X" && eighthButton.titleLabel?.text == "X" && ninethButton.titleLabel?.text == "X") || (firstButton.titleLabel?.text == "X" && fourthButton.titleLabel?.text == "X" && seventhButton.titleLabel?.text == "X") || (secondButton.titleLabel?.text == "X" && fifthButton.titleLabel?.text == "X" && eighthButton.titleLabel?.text == "X") || (thirdButton.titleLabel?.text == "X" && sixthButton.titleLabel?.text == "X" && ninethButton.titleLabel?.text == "X") || (firstButton.titleLabel?.text == "X" && fifthButton.titleLabel?.text == "X" && ninethButton.titleLabel?.text == "X") || (thirdButton.titleLabel?.text == "X" && fifthButton.titleLabel?.text == "X" && seventhButton.titleLabel?.text == "X") {
            
        print("X has won")
    }
        if (firstButton.titleLabel?.text == "O" && secondButton.titleLabel?.text == "O" && thirdButton.titleLabel?.text == "O") || (fourthButton.titleLabel?.text == "O" && fifthButton.titleLabel?.text == "O" && sixthButton.titleLabel?.text == "O") || (seventhButton.titleLabel?.text == "O" && eighthButton.titleLabel?.text == "O" && ninethButton.titleLabel?.text == "O") || (firstButton.titleLabel?.text == "O" && fourthButton.titleLabel?.text == "O" && seventhButton.titleLabel?.text == "O") || (secondButton.titleLabel?.text == "O" && fifthButton.titleLabel?.text == "O" && eighthButton.titleLabel?.text == "O") || (thirdButton.titleLabel?.text == "O" && sixthButton.titleLabel?.text == "O" && ninethButton.titleLabel?.text == "O") || (firstButton.titleLabel?.text == "O" && fifthButton.titleLabel?.text == "O" && ninethButton.titleLabel?.text == "O") || (thirdButton.titleLabel?.text == "O" && fifthButton.titleLabel?.text == "O" && seventhButton.titleLabel?.text == "O") {
            
        print("O has won")
    }
}
}
