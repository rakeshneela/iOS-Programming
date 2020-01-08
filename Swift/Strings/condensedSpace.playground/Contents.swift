import UIKit

func condensedSpace(input: String) -> String {
    return input.replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
//    var newWord = [Character]()
//    var speenSpace: Bool = false
//    for letter in input {
//        if letter == " " {
//            if seenSpace { continue }
//            seenSpace = true
//        } else {
//            seenSpace = false
//        }
//        newWord.append(letter)
//    }
//    return String(newWord)
}

print(condensedSpace(input: "a   b  c"))
print(condensedSpace(input: "    a"))
print(condensedSpace(input: "abc"))
