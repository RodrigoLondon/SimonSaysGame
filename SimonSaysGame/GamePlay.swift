//
//  GamePlay.swift
//  SimonSaysGame
//
//  Created by Lewis Jones on 17/04/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

import Foundation


class GamePlay {
    
    //userMoves Array
    private var userMoves:[Int] = []
    
    //conrrectMoves Array
    private(set) var correctMoves: [Int] = []
    
    //enum
    
    enum Move {
        case correctAndContinue
        case correctAndNewRound
        case incorrect
    }
    
    //function userSelected value -> Move
    
    
    func userSelected(_ value: Int) -> Move {
        
        userMoves.append(value)
        
        if correctMoves == userMoves {
            print("Correct!! 😃✅")
            createNextRound()
            return Move.correctAndNewRound
        } else {
            for number in 0..<userMoves.count {
                if correctMoves[number] != userMoves[number] {
                    print("Incorrect 🥺😢😭")
                    return Move.incorrect
                }
            }
            print("All of the moves are so far correct 😃✅")
            return Move.correctAndContinue
        }
        
    }
    
    // function create next round
    
    func createNextRound() {
        correctMoves.append(pickRandomNumberBetween0And3())
        userMoves = []
         print("here is the right moves: \(correctMoves) 😃✅")
    }
    
    // function start new game
    
    func startNewGame() {
        correctMoves = [pickRandomNumberBetween0And3(), pickRandomNumberBetween0And3(), pickRandomNumberBetween0And3()]
        userMoves = []
        
        print("here is the right moves: \(correctMoves) 😃✅")
    }
    
    // function pick a random number 0-3
    
    private func pickRandomNumberBetween0And3() -> Int {
        //random number between 0 and 4 (not including 4)
        return Int(arc4random_uniform(4))
    
    }
}
