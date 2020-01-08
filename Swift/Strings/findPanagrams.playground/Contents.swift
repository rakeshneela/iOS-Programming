import UIKit

func findPanagrams(input: String) -> Bool {
  let set = Set(input.lowercased())
    let letters = set.filter{ $0 >= "a" && $0 <= "z" }
    return letters.count == 26
}

print(findPanagrams(input: "The quick brown fox jumps over the lazy dog"))
print(findPanagrams(input: "The quick brown fox jumped over the lazy dog"))

func vowelConstantsInfo(input: String) -> (vowels: Int, consonants: Int) {
    let vowelSet = CharacterSet(charactersIn: "aeiou")
    let consantSet = CharacterSet(charactersIn: "bcdfghjklmnpqrstvwxyz")
    
    var vowelCount = 0
    var consantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if (stringLetter.rangeOfCharacter(from: vowelSet) != nil) {
            vowelCount += 1
        } else if (stringLetter.rangeOfCharacter(from: consantSet) != nil) {
            consantCount += 1
        }
    }
    return (vowelCount, consantCount)
    
}

print(vowelConstantsInfo(input: "Swift Coding Challenges"))
print(vowelConstantsInfo(input: "Mississippi"))


func vowelConstantsInfoB(input: String) -> (vowels: Int, consonants: Int) {
    let vowelSet = "aeiou"
    let consantSet = "bcdfghjklmnpqrstvwxyz"
    
    var vowelCount = 0
    var consantCount = 0
    
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if vowelSet.contains(stringLetter) {
            vowelCount += 1
        } else if consantSet.contains(stringLetter) {
            consantCount += 1
        }
    }
    return (vowelCount, consantCount)
    
}

print(vowelConstantsInfoB(input: "Swift Coding Challenges"))
print(vowelConstantsInfoB(input: "Mississippi"))


func comparisionString(inputA: String, inputB: String) -> Bool {
    guard inputA.count == inputB.count else { return false }
    let firstArray = Array(inputA)
    let secondArray = Array(inputB)
    var differences = 0
    
    for (index, letter) in firstArray.enumerated() {
        if secondArray[index] != letter {
            differences += 1
        }
        if differences == 4 {
            return false
        }
    }
    return true
}



print(comparisionString(inputA: "Clamp", inputB: "Cramp"))
print(comparisionString(inputA: "Clamp", inputB: "Crams"))
print(comparisionString(inputA: "Clamp", inputB: "Grams"))
print(comparisionString(inputA: "Clamp", inputB: "Grans"))
print(comparisionString(inputA: "Clamp", inputB: "Clam"))
print(comparisionString(inputA: "clamp", inputB: "maple"))


func findLongestPrefix(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    guard let first = parts.first else { return "" }
    var currentPrefix = ""
    var bestPrefix = ""
    for letter in first {
        currentPrefix.append(letter)
        for word in parts {
            if !word.hasPrefix(currentPrefix) {
                return bestPrefix
            }
        }
        bestPrefix = currentPrefix
    }
    return bestPrefix
}

print(findLongestPrefix(input: "swift switch swill swim"))
print(findLongestPrefix(input: "flip flap flop"))


func challenge14(string: String, current: String = "") {
let length = string.count
let strArray = Array(string)
if (length == 0) {
   // there's nothing left to re-arrange; print the result
    print(current)
      print("******")
   } else {
      print(current)
      // loop through every character
      for i in 0 ..< length {
         // get the letters before me
         let left = String(strArray[0 ..< i])
         // get the letters after me
         let right = String(strArray[i+1 ..< length])
         // put those two together and carry on
         challenge14(string: left + right, current: current +
String(strArray[i]))
} }
}
