//
//  extensions.swift
//  Advent-of-Code
//
//  Created by Steven Prichard on 12/1/18.
//

import Foundation

extension Substring {
    func toFrequencyChange() -> FrequencyChange {
        let sign = self.first!
        
        let valueStartIndex = self.index(self.startIndex, offsetBy:1)
        let rawValue = String(self[valueStartIndex...])
        guard let value = Int(rawValue) else {
            fatalError("Unable to convert rawValue to Int")
        }
        
        return FrequencyChange(sign: sign.toSign(), value: value)
    }
}

extension Character {
    func toSign() -> freqSign {
        switch self {
        case "+":
            return .plus
        case "-":
            return .minus
        default:
            fatalError("unsupported sign")
        }
    }
}
