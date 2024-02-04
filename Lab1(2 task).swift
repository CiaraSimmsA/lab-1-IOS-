//
//  main.swift
//  labaratory 1
//
//  Created by 903-03i on 29.01.2024.
//

import Foundation

func combineStrings() {
    print("Enter the first line:")
    let line1 = readLine() ?? ""
    
    print("Enter the second line:")
    let line2 = readLine() ?? ""
    
    let combinedString = line1 + line2
    print("Combined String: \(combinedString)")
}

func flipString() {
    print("Enter a string:")
    let inputString = readLine() ?? ""
    
    let reversedString = String(inputString.reversed())
    print("Reversed String: \(reversedString)")
}

func countCharacters() {
    print("Enter a string:")
    let inputString = readLine() ?? ""
    
    let characterCount = inputString.replacingOccurrences(of: " ", with: "").count
    print("Character Count (excluding spaces): \(characterCount)")
}

func searchSubstring() {
    print("Enter the string:")
    let inputString = readLine() ?? ""
    
    print("Enter the substring to search for:")
    let substring = readLine() ?? ""
    
    if let range = inputString.range(of: substring) {
        let index = inputString.distance(from: inputString.startIndex, to: range.lowerBound)
        print("Substring found at index: \(index)")
    } else {
        print("Substring not found in the string.")
    }
}

print("1. Combine Strings")
print("2. Flip a String")
print("3. Count Characters")
print("4. Search for Substring")

if let choice = readLine(), let option = Int(choice) {
    switch option {
    case 1:
        combineStrings()
    case 2:
        flipString()
    case 3:
        countCharacters()
    case 4:
        searchSubstring()
    default:
        print("Invalid option.")
    }
} else {
    print("Invalid input.")
}
