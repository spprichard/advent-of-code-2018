//
//  answers.swift
//  Advent-of-Code
//
//  Created by Steven Prichard on 12/1/18.
//

import Foundation

func day1() -> Int {
    let filePath = "/Users/stevenprichard/Developer/Swift/Advent-of-Code/data/input.txt"
    
    guard let rawContents = getData(from: filePath) else {
        fatalError("Could not get data")
    }
    
    let contents = rawContents.split(separator: "\n")
    
    let answer = contents.reduce(0, {initVal, item in
        return item.toFrequencyChange().sum(initValue: initVal)
    })
    
    
    return answer
}
