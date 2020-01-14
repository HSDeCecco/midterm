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
	var word: String = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

	func isLetter() -> Bool {
		return false
	}
	
	func didWin() -> Bool {
		return false
	}
	
	func randomWord() -> String {
		var words: [String] = []
		
		DispatchQueue.global(qos: .background).async {
			if let path = Bundle.main.path(forResource: "wordlist", ofType: "json") {
				do {
					let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
					let jsonData = try JSONDecoder().decode(WordList.self, from: data)
					
					words = jsonData.wordList
				} catch _ {
					print("error")
				}
			}
		}
		
		let randomWord = words[Int.random(in: 0..<words.count)]
		word = randomWord
		
		return randomWord
	}
	
	func displayWord() {
		
	}
	
	func loseApple() {
		
	}
	
	func gainLetter() {
		
	}
}

struct WordList: Codable {
	var wordList: [String]
}
