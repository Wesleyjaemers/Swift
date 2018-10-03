//
//  ViewController.swift
//  ApplePie
//
//  Created by vdab cursist on 03/10/2018.
//  Copyright © 2018 vdab cursist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    var currentWord = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
    func newRound(){
        if (!listOfWords.isEmpty){
            currentWord = listOfWords.removeFirst()
        }
    }
}

