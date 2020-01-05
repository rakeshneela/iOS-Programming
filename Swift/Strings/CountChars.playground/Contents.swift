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
