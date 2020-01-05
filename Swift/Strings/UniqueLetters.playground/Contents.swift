import UIKit

func challenge1(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
   return true
}

print(challenge1(input: "No duplicates") == true)
print(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true)
print(challenge1(input: "AaBbCc") == true)
print(challenge1(input: "Hello, world") == false)


func challenge1b(input: String) -> Bool {
    print(Set(input))
    return Set(input).count == input.count
}
print(challenge1b(input: "No duplicates") == true)
print(challenge1b(input: "abcdefghijklmnopqrstuvwxyz") == true)
print(challenge1b(input: "AaBbCc") == true)
print(challenge1b(input: "Hello, world") == false)
