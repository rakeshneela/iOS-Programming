import UIKit

func challenge15(input: String) -> String {
    let parts = input.components(separatedBy: " ")
    let reversed = parts.map { String($0.reversed()) }
    return reversed.joined(separator: " ")
}

func challenge16() {
    for i in 1...100 {
        if i % 3 == 0 {
            if i % 5 == 0 {
                print("Fizz Buzz")
            } else {
                print("Fizz")
            }
        } else if i % 5 == 0 {
             print("Buzz")
        } else {
            print("\(i)")
        }
    }
}
challenge16()
