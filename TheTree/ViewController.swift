//
//  ViewController.swift
//  TheTree
//
//  Created by Harry DeCecco (student HH) on 1/10/20.
//  Copyright © 2020 Harry DeCecco (student HH). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var lives = 7
        
        
        
        
        func gainLetter(){
            
        }
        
        func loseApple(){
            img.image = UIImage(named: "Tree \(lives)")
        lives -= 1
            //print("")
        }
        
        
        
        
        

    
    }


}

