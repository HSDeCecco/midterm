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
	
    func gainLetter(letter: Character) {
		
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
        
		switch sender.currentTitle?.lowercased() {
        case "a":
            whatToDo(buttonLetter: "a")
        case "b":
            whatToDo(buttonLetter: "b")
        case "c":
            whatToDo(buttonLetter: "c")
        case "d":
            whatToDo(buttonLetter: "d")
        case "e":
            whatToDo(buttonLetter: "e")
        case "f":
            whatToDo(buttonLetter: "f")
        case "g":
            whatToDo(buttonLetter: "g")
        case "h":
            whatToDo(buttonLetter: "h")
        case "i":
            whatToDo(buttonLetter: "i")
        case "j":
            whatToDo(buttonLetter: "j")
        case "k":
            whatToDo(buttonLetter: "k")
        case "l":
            whatToDo(buttonLetter: "l")
        case "m":
            whatToDo(buttonLetter: "m")
        case "n":
            whatToDo(buttonLetter: "n")
        case "o":
            whatToDo(buttonLetter: "o")
        case "p":
            whatToDo(buttonLetter: "p")
        case "q":
            whatToDo(buttonLetter: "q")
        case "r":
            whatToDo(buttonLetter: "r")
        case "s":
            whatToDo(buttonLetter: "s")
        case "t":
            whatToDo(buttonLetter: "t")
        case "u":
            whatToDo(buttonLetter: "u")
        case "v":
            whatToDo(buttonLetter: "v")
        case "w":
            whatToDo(buttonLetter: "w")
        case "x":
            whatToDo(buttonLetter: "x")
        case "y":
            whatToDo(buttonLetter: "y")
        case "z":
            whatToDo(buttonLetter: "z")
            
		default:
			break
		}
        didWin()
        buttonOff(sender)
	}
    
    
    func whatToDo(buttonLetter: Character) {
        if(isLetter(letterPressed: buttonLetter)){
            gainLetter(letter: buttonLetter)
        } else {
            loseApple()
        }
        
    }
}




struct WordList: Codable {
	var wordList: [String]
}
