//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var inputYear = 0
var testingYear : String

while true {
    print("What is the starting year?")
    guard let givenInput = readLine() else {
        continue
    }
    guard let integerInput = Int(givenInput) else {
        continue
    }
    if integerInput > 10000 || integerInput < 0 {
        continue
    }
    inputYear = integerInput
    break
}

while true {
    inputYear += 1
    testingYear = String(inputYear)
    
    var frequency : [Character : Int] = [:]
    for character in testingYear {
        if frequency[character] == nil {
            frequency[character] = 1
        } else {
            frequency[character]! += 1
        }
    }
    
    if frequency.count == testingYear.count {
        print("The next distinct year is \(testingYear)")
        break
    } else {
        continue
    }
}

