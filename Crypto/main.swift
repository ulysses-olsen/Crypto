//
//  main.swift
//  StringTest
//
//  Created by Ulysses Olsen on 8/27/19.
//  Copyright © 2019 Ulysses Olsen. All rights reserved.
//

import Foundation

let alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
let frequencies = [
    "e": 12.02,
    "t": 9.10,
    "a": 8.12,
    "o": 7.68,
    "i": 7.31,
    "n": 6.95,
    "s": 6.28,
    "r": 6.02,
    "h": 5.92,
    "d": 4.32,
    "l": 3.98,
    "u": 2.88,
    "c": 2.71,
    "m": 2.61,
    "f": 2.30,
    "y": 2.11,
    "w": 2.09,
    "g": 2.03,
    "p": 1.82,
    "b": 1.49,
    "v": 1.11,
    "k": 0.69,
    "x": 0.17,
    "q": 0.11,
    "j": 0.10,
    "z": 0.07
]

func score(message: String) -> Double {
    var result: Double = 0
    for letter in message.map({ String($0) }) {
        if let frequency = frequencies[letter] {
            result += frequency
        }
    }
    return result
}

func decrypt(message: String) -> String {
    var highestScore = 0.0
    var highestScoringMessage = ""
    for index in 0..<alphabet.count {

    }
    fatalError()
}

func convert(letter: String, amount: Int) -> String {
    guard let index = alphabet.firstIndex(of: letter) else { fatalError("Could not find \(letter)") }
    var newIndex = (index + amount) % alphabet.count
    if newIndex < 0 {
        newIndex = alphabet.count + newIndex
    }
    let newLetter = alphabet[newIndex]
    return newLetter
}

func encrypt(letter: String, amount: Int) -> String {
    return convert(letter: letter, amount: amount)
}

func decrypt(letter: String, amount: Int) -> String {
    return convert(letter: letter, amount: -amount)
}

func convert(message: String, amount: Int) -> String {
    let words = message.split { char in
        !alphabet.joined().contains(char)
    }
    var decryptedWords: [String] = []
    for word in words {
        var decryptedWord = ""
        for letter in word {
            let char = decrypt(letter: String(letter), amount: amount)
            decryptedWord.append(char)
        }
        decryptedWords.append(decryptedWord)
    }
    return decryptedWords.joined(separator: " ")
}

func encrypt(message: String, amount: Int) -> String {
    return convert(message: message, amount: amount)
}

func decrypt(message: String, amount: Int) -> String {
    return convert(message: message, amount: -amount)
}

func convertPassword(password: String) -> [Int] {
    var result: [Int] = []
    for letter in password.map({ String($0) }) {
        guard let index = alphabet.firstIndex(of: letter) else { fatalError("Could not find \(letter)") }
        result.append(index)
    }
    return result
}

func encrypt(message: String, password: String) -> String {
    fatalError()
}



func test() {

    let pass = "✅"
    let fail = "🛑"

    let tests = [
        encrypt(letter: "a", amount: 1) == "b",
        encrypt(letter: "z", amount: 1) == "a",
        encrypt(letter: "a", amount: 26) == "a",
        encrypt(letter: "a", amount: 26 * 3 + 1) == "b",

        decrypt(letter: "b", amount: 1) == "a",
        decrypt(letter: "a", amount: 1) == "z",
        decrypt(letter: "a", amount: 26) == "a",
        decrypt(letter: "a", amount: 26 * 3 + 1) == "z",

        convertPassword(password: "abcxyz") == [0, 1, 2, 23, 24, 25],
        convertPassword(password: "ulysses") == [20, 11, 24, 18, 18, 4, 18],

//        score(encryptedMessage: "e") == 12.02,
//        score(encryptedMessage: "abc") == 12.32,
//        score(encryptedMessage: "ulysses") == 39.83
    ]

    for test in tests {
        print(test ? pass : fail)
    }

}

//test()

let x = encrypt(message: "hello world!, my (name) is 'todd'", amount: 3)
print(x)
let y = decrypt(message: x, amount: 3)
print(y)
