//
//  types.swift
//  Advent-of-Code
//
//  Created by Steven Prichard on 12/1/18.
//

import Foundation


enum freqSign: Character {
    case plus = "+"
    case minus = "-"
}


struct FrequencyChange {
    var sign: freqSign
    var value: Int
    
    func sum(initValue: Int) -> Int {
        switch self.sign {
        case .plus:
            return initValue + self.value
        case .minus:
            return initValue - self.value
        }
    }
}


