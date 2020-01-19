//
//  ViewController.swift
//  TheTree
//
//  Created by Harry DeCecco (student HH) on 1/10/20.
//  Copyright © 2020 Harry DeCecco (student HH). All rights reserved.
//

import UIKit
import Foundation
extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}
class ViewController: UIViewController {
    var words: [String] = ["a", "ability", "able", "about", "above", "accept", "according", "account", "across", "act", "action", "activity", "actually", "add", "address", "administration", "admit", "adult", "affect", "after", "again", "against", "age", "agency", "agent", "ago", "agree", "agreement", "ahead", "air", "all", "allow", "almost", "alone", "along", "already", "also", "although", "always", "American", "among", "amount", "analysis", "and", "animal", "another", "answer", "any", "anyone", "anything", "appear", "apply", "approach", "area", "argue", "arm", "around", "arrive", "art", "article", "artist", "as", "ask", "assume", "at", "attack", "attention", "attorney", "audience", "author", "authority", "available", "avoid", "away", "baby", "back", "bad", "bag", "ball", "bank", "bar", "base", "be", "beat", "beautiful", "because", "become", "bed", "before", "begin", "behavior", "behind", "believe", "benefit", "best", "better", "between", "beyond", "big", "bill", "billion", "bit", "black", "blood", "blue", "board", "body", "book", "born", "both", "box", "boy", "break", "bring", "brother", "budget", "build", "building", "business", "but", "buy", "by", "call", "camera", "campaign", "can", "cancer", "candidate", "capital", "car", "card", "care", "career", "carry", "case", "catch", "cause", "cell", "center", "central", "century", "certain", "certainly", "chair", "challenge", "chance", "change", "character", "charge", "check", "child", "choice", "choose", "church", "citizen", "city", "civil", "claim", "class", "clear", "clearly", "close", "coach", "cold", "collection", "college", "color", "come", "commercial", "common", "community", "company", "compare", "computer", "concern", "condition", "conference", "Congress", "consider", "consumer", "contain", "continue", "control", "cost", "could", "country", "couple", "course", "court", "cover", "create", "crime", "cultural", "culture", "cup", "current", "customer", "cut", "dark", "data", "daughter", "day", "dead", "deal", "death", "debate", "decade", "decide", "decision", "deep", "defense", "degree", "Democrat", "democratic", "describe", "design", "despite", "detail", "determine", "develop", "development", "die", "difference", "different", "difficult", "dinner", "direction", "director", "discover", "discuss", "discussion", "disease", "do", "doctor", "dog", "door", "down", "draw", "dream", "drive", "drop", "drug", "during", "each", "early", "east", "easy", "eat", "economic", "economy", "edge", "education", "effect", "effort", "eight", "either", "election", "else", "employee", "end", "energy", "enjoy", "enough", "enter", "entire", "environment", "environmental", "especially", "establish", "even", "evening", "event", "ever", "every", "everybody", "everyone", "everything", "evidence", "exactly", "example", "executive", "exist", "expect", "experience", "expert", "explain", "eye", "face", "fact", "factor", "fail", "fall", "family", "far", "fast", "father", "fear", "federal", "feel", "feeling", "few", "field", "fight", "figure", "fill", "film", "final", "finally", "financial", "find", "fine", "finger", "finish", "fire", "firm", "first", "fish", "five", "floor", "fly", "focus", "follow", "food", "foot", "for", "force", "foreign", "forget", "form", "former", "forward", "four", "free", "friend", "from", "front", "full", "fund", "future", "game", "garden", "gas", "general", "generation", "get", "girl", "give", "glass", "go", "goal", "good", "government", "great", "green", "ground", "group", "grow", "growth", "guess", "gun", "guy", "hair", "half", "hand", "hang", "happen", "happy", "hard", "have", "he", "head", "health", "hear", "heart", "heat", "heavy", "help", "her", "here", "herself", "high", "him", "himself", "his", "history", "hit", "hold", "home", "hope", "hospital", "hot", "hotel", "hour", "house", "how", "however", "huge", "human", "hundred", "husband", "i", "idea", "identify", "if", "image", "imagine", "impact", "important", "improve", "in", "include", "including", "increase", "indeed", "indicate", "individual", "industry", "information", "inside", "instead", "institution", "interest", "interesting", "international", "interview", "into", "investment", "involve", "issue", "it", "item", "its", "itself", "job", "join", "just", "keep", "key", "kid", "kill", "kind", "kitchen", "know", "knowledge", "land", "language", "large", "last", "late", "later", "laugh", "law", "lawyer", "lay", "lead", "leader", "learn", "least", "leave", "left", "leg", "legal", "less", "let", "letter", "level", "lie", "life", "light", "like", "likely", "line", "list", "listen", "little", "live", "local", "long", "look", "lose", "loss", "lot", "love", "low", "machine", "magazine", "main", "maintain", "major", "majority", "make", "man", "manage", "management", "manager", "many", "market", "marriage", "material", "matter", "may", "maybe", "me", "mean", "measure", "media", "medical", "meet", "meeting", "member", "memory", "mention", "message", "method", "middle", "might", "military", "million", "mind", "minute", "miss", "mission", "model", "modern", "moment", "money", "month", "more", "morning", "most", "mother", "mouth", "move", "movement", "movie", "Mr", "Mrs", "much", "music", "must", "my", "myself", "name", "nation", "national", "natural", "nature", "near", "nearly", "necessary", "need", "network", "never", "new", "news", "newspaper", "next", "nice", "night", "no", "none", "nor", "north", "not", "note", "nothing", "notice", "now", "n't", "number", "occur", "of", "off", "offer", "office", "officer", "official", "often", "oh", "oil", "ok", "old", "on", "once", "one", "only", "onto", "open", "operation", "opportunity", "option", "or", "order", "organization", "other", "others", "our", "out", "outside", "over", "own", "owner", "page", "pain", "painting", "paper", "parent", "part", "participant", "particular", "particularly", "partner", "party", "pass", "past", "patient", "pattern", "pay", "peace", "people", "per", "perform", "performance", "perhaps", "period", "person", "personal", "phone", "physical", "pick", "picture", "piece", "place", "plan", "plant", "play", "player", "PM", "point", "police", "policy", "political", "politics", "poor", "popular", "population", "position", "positive", "possible", "power", "practice", "prepare", "present", "president", "pressure", "pretty", "prevent", "price", "private", "probably", "problem", "process", "produce", "product", "production", "professional", "professor", "program", "project", "property", "protect", "prove", "provide", "public", "pull", "purpose", "push", "put", "quality", "question", "quickly", "mother", "race", "radio", "raise", "range", "rate", "rather", "reach", "read", "ready", "real", "reality", "realize", "really", "reason", "receive", "recent", "recently", "recognize", "record", "red", "reduce", "reflect", "region", "relate", "relationship", "religious", "remain", "remember", "remove", "report", "represent", "Republican", "require", "research", "resource", "respond", "response", "responsibility", "rest", "result", "return", "reveal", "rich", "right", "rise", "risk", "road", "rock", "role", "room", "rule", "run", "safe", "same", "save", "say", "scene", "school", "science", "scientist", "score", "sea", "season", "seat", "second", "section", "security", "see", "seek", "seem", "sell", "send", "senior", "sense", "series", "serious", "serve", "service", "set", "seven", "several", "sex", "sexual", "shake", "share", "she", "shoot", "short", "shot", "should", "shoulder", "show", "side", "burger", "significant", "similar", "simple", "simply", "since", "sing", "single", "sister", "sit", "site", "situation", "six", "size", "skill", "skin", "small", "smile", "so", "social", "society", "soldier", "some", "somebody", "someone", "something", "sometimes", "son", "song", "soon", "sort", "sound", "source", "south", "southern", "space", "speak", "special", "specific", "speech", "spend", "sport", "spring", "staff", "stage", "stand", "standard", "star", "start", "state", "statement", "station", "stay", "step", "still", "stock", "stop", "store", "story", "strategy", "street", "strong", "structure", "student", "study", "stuff", "style", "subject", "success", "successful", "such", "suddenly", "suffer", "suggest", "summer", "support", "sure", "surface", "system", "table", "take", "talk", "task", "tax", "teach", "teacher", "team", "technology", "television", "tell", "ten", "tend", "term", "test", "than", "thank", "that", "the", "their", "them", "themselves", "then", "theory", "there", "these", "they", "thing", "think", "third", "this", "those", "though", "thought", "thousand", "threat", "three", "through", "throughout", "throw", "thus", "time", "to", "today", "together", "tonight", "too", "top", "total", "tough", "toward", "town", "trade", "traditional", "training", "travel", "treat", "treatment", "tree", "trial", "trip", "trouble", "true", "truth", "try", "turn", "tv", "two", "type", "under", "understand", "unit", "until", "up", "upon", "us", "use", "usually", "value", "various", "very", "victim", "view", "violence", "visit", "voice", "vote", "wait", "walk", "wall", "want", "war", "watch", "water", "way", "we", "weapon", "wear", "week", "weight", "well", "west", "western", "what", "whatever", "when", "where", "whether", "which", "while", "white", "who", "whole", "whom", "whose", "why", "wide", "wife", "will", "win", "wind", "window", "wish", "with", "within", "without", "woman", "wonder", "word", "work", "worker", "world", "worry", "would", "write", "writer", "wrong", "yard", "yeah", "year", "jelly", "yet", "you", "young", "your", "yourself"]
    
	var word: String = ""
    var wordLength = 0;
    var wrongCounter = 0;
    var rightCounter = 0;
    var numOfWins = 0;
    var numOfLs = 0;
    var spotOfLetter = 0;
    var backUpSpotOfLetter = 0;
    var doubleLetter = false
    private var labels = [UILabel]()
    @IBOutlet var myButtons: [UIButton]!
    @IBOutlet weak var theTree: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label17: UILabel!
    @IBOutlet weak var label18: UILabel!
    @IBOutlet weak var label19: UILabel!
    @IBOutlet weak var label20: UILabel!
    @IBOutlet weak var label21: UILabel!
    @IBOutlet weak var loseCounter: UILabel!
    @IBOutlet weak var winCounter: UILabel!
    @IBOutlet weak var message: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labels.append(label1)
        labels.append(label2)
        labels.append(label3)
        labels.append(label4)
        labels.append(label5)
        labels.append(label6)
        labels.append(label7)
        labels.append(label8)
        labels.append(label9)
        labels.append(label10)
        labels.append(label11)
        labels.append(label12)
        labels.append(label13)
        labels.append(label14)
        labels.append(label15)
        labels.append(label16)
        labels.append(label17)
        labels.append(label18)
        labels.append(label19)
        labels.append(label20)
        labels.append(label21)
        reset()
    }
    
    func reset() {
        
        word = randomWord()
        for button in self.myButtons {
            button.isEnabled = true
        }
        theTree.image = UIImage(named: "Tree 0")
        word = randomWord()
        wordLength = word.count
        for x in 0..<labels.count {
            labels[x].textColor = UIColor.black
        }
        for y in 1...wordLength {
            labels[y].text = "_"
            labels[y].textColor = UIColor.white
        }
        print(word)
    }
    
    func isLetter(letterPressed: Character) -> Bool {
        var tempCounter = rightCounter
        var counter = 0;
        for x in word {
            var currentLetter: Character = x
            if(letterPressed.asciiValue == currentLetter.asciiValue){
                if(tempCounter == rightCounter){
                    spotOfLetter = counter
                } else {
                    doubleLetter = true
                    backUpSpotOfLetter = counter
                }
                rightCounter += 1
                print("Correct")
            }
            counter += 1
        }
        if (tempCounter != rightCounter){ return true }
        wrongCounter += 1;
        print("Wrong")
		return false
	}
	
	func didWin(){
        if(wrongCounter == 7){
            numOfLs += 1
            wrongCounter = 0
            rightCounter = 0
            loseCounter.text = "\(numOfLs)"
            reset()
            
            //Ajust Lose Label
        }
        if(rightCounter == word.count){
            numOfWins += 1
            wrongCounter = 0
            rightCounter = 0
            winCounter.text = "\(numOfWins)"
            reset()
            //Adjust Win Label
        }
	}
	
	func randomWord() -> String {
		let randomNum = Int.random(in: 0..<words.count)
		let randomWord = words[randomNum]
		word = randomWord
        
		return randomWord
	}
	
	func loseApple() {
		theTree.image = UIImage(named: "Tree \(wrongCounter)")
	}
	
    func gainLetter(letter: Character) {
        labels[spotOfLetter + 1].text = "\(letter)"
        if(doubleLetter){
            labels[backUpSpotOfLetter + 1].text = "\(letter)"
            doubleLetter = false
        }
        
	}
	
	func buttonOff(_ button: UIButton) {
		button.isEnabled = false
	}
	
//    func loadJSON() {
//        DispatchQueue.global(qos: .background).async {
//            if let path = Bundle.main.path(forResource: "wordlist", ofType: "json") {
//                do {
//                    let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
//                    let jsonData = try JSONDecoder().decode(WordList.self, from: data)
//
//                    self.words = jsonData.wordList
//                } catch _ {
//                    print("error")
//                }
//            }
//        }
//    }
	
	@IBAction func letterPressed(sender: UIButton) {
        
		switch sender.currentTitle?.lowercased() {
        case "a":
            whatToDo(buttonLetter: "a")
            print("a")
        case "b":
            whatToDo(buttonLetter: "b")
            print("b")
        case "c":
            whatToDo(buttonLetter: "c")
            print("c")
        case "d":
            whatToDo(buttonLetter: "d")
            print("d")
        case "e":
            whatToDo(buttonLetter: "e")
            print("e")
        case "f":
            whatToDo(buttonLetter: "f")
            print("f")
        case "g":
            whatToDo(buttonLetter: "g")
            print("g")
        case "h":
            whatToDo(buttonLetter: "h")
            print("h")
        case "i":
            whatToDo(buttonLetter: "i")
            print("i")
        case "j":
            whatToDo(buttonLetter: "j")
            print("j")
        case "k":
            whatToDo(buttonLetter: "k")
            print("k")
        case "l":
            whatToDo(buttonLetter: "l")
            print("l")
        case "m":
            whatToDo(buttonLetter: "m")
            print("m")
        case "n":
            whatToDo(buttonLetter: "n")
            print("n")
        case "o":
            whatToDo(buttonLetter: "o")
            print("o")
        case "p":
            whatToDo(buttonLetter: "p")
            print("p")
        case "q":
            whatToDo(buttonLetter: "q")
            print("q")
        case "r":
            whatToDo(buttonLetter: "r")
            print("r")
        case "s":
            whatToDo(buttonLetter: "s")
            print("s")
        case "t":
            whatToDo(buttonLetter: "t")
            print("t")
        case "u":
            whatToDo(buttonLetter: "u")
            print("u")
        case "v":
            whatToDo(buttonLetter: "v")
            print("v")
        case "w":
            whatToDo(buttonLetter: "w")
            print("w")
        case "x":
            whatToDo(buttonLetter: "x")
            print("x")
        case "y":
            whatToDo(buttonLetter: "y")
            print("y")
        case "z":
            whatToDo(buttonLetter: "z")
            print("z")
            
		default:
			break
		}
        
        buttonOff(sender)
        didWin()

	}
    
    
    func whatToDo(buttonLetter: Character) {
        if(isLetter(letterPressed: buttonLetter)){
            gainLetter(letter: buttonLetter)
        } else {
            loseApple()
        }
        
    }
}




//struct WordList: Codable {
//    var wordList: [String]
//}
