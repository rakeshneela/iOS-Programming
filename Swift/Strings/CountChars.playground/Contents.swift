import UIKit

func countChars(inputA: String, char: Character) -> Int {
    var count = 0
    for letter in inputA {
        if letter == char {
            count += 1
        }
    }
    return count
}

print(countChars(inputA: "The rain in Spain", char: "a"))
print(countChars(inputA: "Mississippi", char: "i"))


// Using Reduce 
func countCharsB(inputA: String, char: Character) -> Int {
    return inputA.reduce(0) {
        $1 == char ? $0 + 1 : $0
    }
}
print(countCharsB(inputA: "The rain in Spain", char: "a"))
print(countCharsB(inputA: "Mississippi", char: "i"))

// Using NSCountedSet
func countCharsC(inputA: String, inputB: String) -> Int {
    let array = inputA.map { String($0) }
    let counted = NSCountedSet(array: array)
    return counted.count(for: inputB)
}
print(countCharsC(inputA: "The rain in Spain", inputB: "a"))
print(countCharsC(inputA: "Mississippi", inputB: "i"))


// Using NSCountedSet
func countCharsD(inputA: String, inputB: String) -> Int {
    let modified = inputA.replacingOccurrences(of: inputB, with: "")
    return inputA.count - modified.count
}
print(countCharsD(inputA: "The rain in Spain", inputB: "a"))
print(countCharsD(inputA: "Mississippi", inputB: "i"))
