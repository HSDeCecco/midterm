//
//  ViewController.swift
//  TheTree
//
//  Created by Harry DeCecco (student HH) on 1/10/20.
//  Copyright © 2020 Harry DeCecco (student HH). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Code to put in each button action
    //if(isLetter(button letter)) gainLetter()
    //else loseApple()
    func isLetter(letterPressed: Character) -> Bool {
        for x in word {
            var currentLetter = x.hexDigitValue
            var letterSelected = letterPressed.hexDigitValue
            if(currentLetter == letterSelected){
                return true
            }
        }
		return false
	}
	
	func didWin() -> Bool {
		return false
	}
	
	func randomWord() -> String {
		return ""
	}
	
	func displayWord() {
		
	}
	
	func loseApple() {
		
	}
	
	func gainLetter() {
		
	}
}

