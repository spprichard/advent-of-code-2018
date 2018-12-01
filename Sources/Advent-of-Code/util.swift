//
//  core.swift
//  Advent-of-Code
//
//  Created by Steven Prichard on 12/1/18.
//

import Foundation


func getData(from path: String) -> String? {
    let fileURL = URL(fileURLWithPath: path)
    
    do {
        let file = try FileHandle(forReadingFrom: fileURL)
        return String(data: file.readDataToEndOfFile(), encoding: .utf8)!
    } catch {
        print("Error \(error)")
        return nil
    }
    
}
