//
//  main.swift
//  guessing game
//
//  Created by Eric Nguyen on 9/4/22.
//

import Foundation

// swift hides things so u can code faster

// let -> constant; if compiler changes, smth wrong
// var -> smth can change it; u need to track it

let lowerLimit = 1
let upperLimit = 10

let secret = Int.random(in: lowerLimit...upperLimit)

print("Enter a number between \(lowerLimit)-\(upperLimit)")

for guessCount in lowerLimit...upperLimit {
    // checks if input isn't nil (null)
    if let guessString = readLine() {
        if Int(guessString) == secret {
            print("You got it!")
            break
        } else if guessCount == upperLimit {
            print("It says guess a number from \(lowerLimit)-\(upperLimit), idiot.")
            break
        } else {
            print("Guess again!")
        }
    }
}
