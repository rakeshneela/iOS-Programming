import UIKit

func removeDuplicates(input: String) -> String {
    let set: Set = Set(input)
    return String(set)
}

print(removeDuplicates(input: "wombat"))
print(removeDuplicates(input: "hello"))
print(removeDuplicates(input: "Mississippi"))

func removeDuplicatesB(input: String) -> String {
    var used = [Character]()
    for letter in input {
        if !used.contains(letter) {
           used.append(letter)
        }
    }
    return String(used)
}

print(removeDuplicatesB(input: "wombat"))
print(removeDuplicatesB(input: "hello"))
print(removeDuplicatesB(input: "Mississippi"))



func removeDuplicatesC(input: String) -> String {
    var used = [Character: Bool]()
    let result = input.filter {
        used.updateValue(true, forKey: $0) == nil
    }
    return String(result)
}

print(removeDuplicatesC(input: "wombat"))
print(removeDuplicatesC(input: "hello"))
print(removeDuplicatesC(input: "Mississippi"))
