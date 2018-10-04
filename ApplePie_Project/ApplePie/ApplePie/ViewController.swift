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
    @IBOutlet var characterButtons: [UIButton]!
    
    var words = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
//    var currentWord = ""
    
    var currentGame: Game!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
    }
    
    @IBAction func tappedButton(_ sender: UIButton) {
        sender.isEnabled = false
        let characterString = (sender.title(for: .normal))!
        let character = Character(characterString.localizedLowercase)
        currentGame.playerGuessed(character: character)
        updateGameState()
    }
    
    func newRound(){
        if (!words.isEmpty){
            let word = words.removeFirst().localizedLowercase
            currentGame = Game(word: word, incorrectMovesRemaining: incorrectMovesAllowed, guessedCharacters: [])
            enableCharacterButtons(true)
            updateUI()
        }else {
            enableCharacterButtons(false)
        }
    }
    
    func enableCharacterButtons (_ enable: Bool){
        for button in characterButtons{
            button.isEnabled = enable
        }
    }
    
    func updateUI () {
        var characters = [String]()
        for character in currentGame.formattedWord{
            characters.append(String(character))
        }
        
        let wordWithSpacing = characters.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        
        scoreLabel.text = "total wins: \(totalWins), total losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        
    }
    
    func updateGameState () {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        }
        else if currentGame.formattedWord == currentGame.word{
            totalWins += 1
        }
        else {
            updateUI()
        }
    }
}
