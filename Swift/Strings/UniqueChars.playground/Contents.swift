import UIKit

func dupChars(inputA: String, inputB: String) -> Bool {
    var tempString = inputA
    for letter in inputB {
        if let index = tempString.firstIndex(of: letter) {
            tempString.remove(at: index)
        } else {
            return false
        }
        
    }
    return true
}

print(dupChars(inputA: "abca", inputB: "abca"))
print(dupChars(inputA: "abc", inputB: "cba"))
print(dupChars(inputA: "a1 b2", inputB: "b1 a2"))
print(dupChars(inputA: "abc", inputB: "abca"))
print(dupChars(inputA: "abc", inputB: "Abc"))
print(dupChars(inputA: "abcc", inputB: "cabc"))


func dupCharsB(inputA: String, inputB: String) -> Bool {
    return inputA.sorted() == inputB.sorted()
}
