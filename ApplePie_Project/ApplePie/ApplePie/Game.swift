//
//  Game.swift
//  ApplePie
//
//  Created by vdab cursist on 04/10/2018.
//  Copyright © 2018 vdab cursist. All rights reserved.
//

import Foundation

struct Game{
    var word: String
    var incorrectMovesRemaining: Int
    var guessedCharacters: [Character]
    
    var formattedWord: String{
        var guessedWord = ""
        for character in word{
            if guessedCharacters.contains(character){
                guessedWord += "\(character)"
            }else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    mutating func playerGuessed(character: Character) {
        guessedCharacters.append(character)
        if !word.contains(character){
            incorrectMovesRemaining -= 1
        }
    }
}
