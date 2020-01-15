//
//  ViewController.swift
//  TheTree
//
//  Created by Harry DeCecco (student HH) on 1/10/20.
//  Copyright © 2020 Harry DeCecco (student HH). All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
	var words: [String] = []
	var word: String = ""
    var wrongCounter = 0;
    var rightCounter = 0;
    var numOfWins = 0;
    var numOfLs = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		loadJSON()
    }
    
    func reset() {
        //Set labels to blue
        //Reset Hang Man Word
        //Reset Tree
    }
    func isLetter(letterPressed: Character) -> Bool {
        for x in word {
            let currentLetter = x.hexDigitValue
            let letterSelected = letterPressed.hexDigitValue
            if(currentLetter == letterSelected){
                rightCounter += 1
                return true
            }
        }
        wrongCounter += 1;
		return false
	}
	
	func didWin() -> Bool {
        if(wrongCounter == 7){
            numOfLs += 1
            //Ajust Lose Label
        }
        if(rightCounter == word.count){
            numOfWins += 1
            //Adjust Win Label
        }
        wrongCounter = 0
        rightCounter = 0
        reset()
		return false
	}
	
	func randomWord() -> String {
		var words: [String] = []
		
		
		
		let randomWord = words[Int.random(in: 0..<words.count)]
		word = randomWord
		
		return randomWord
	}
	
	func loseApple() {
		
	}
	
	func gainLetter() {
		
	}
	
	func buttonOff(_ button: UIButton) {
		button.isEnabled = false
		
	}
	
	func loadJSON() {
		DispatchQueue.global(qos: .background).async {
			if let path = Bundle.main.path(forResource: "wordlist", ofType: "json") {
				do {
					let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
					let jsonData = try JSONDecoder().decode(WordList.self, from: data)
					
					self.words = jsonData.wordList
				} catch _ {
					print("error")
				}
			}
		}
	}
	
	@IBAction func letterPressed(sender: UIButton) {
		switch sender {
		default:
			break
		}
	}
    func whatToDo(buttonLetter: Character) {
        if(isLetter(letterPressed: buttonLetter)){
            gainLetter()
        } else {
            loseApple()
        }
        
    }
}




struct WordList: Codable {
	var wordList: [String]
}
