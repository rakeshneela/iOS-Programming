import UIKit

func stringRotation(inputA: String, inputB: String) -> Bool {
    let combined = inputA + inputA
    return combined.contains(inputB)
}

//print(stringRotation(inputA: "abcde", inputB: "eabcd"))
//print(stringRotation(inputA: "abcde", inputB: "cdeab"))
//print(stringRotation(inputA: "abcde", inputB: "abced"))
//print(stringRotation(inputA: "abc", inputB: "a"))


func stringRotationB(inputA: String, inputB: String) -> Bool {
    guard inputA.count == inputB.count else { return false }
    let combined = inputA + inputA
    return combined.contains(inputB)
}

print(stringRotationB(inputA: "abcde", inputB: "eabcd"))
print(stringRotationB(inputA: "abcde", inputB: "cdeab"))
print(stringRotationB(inputA: "abcde", inputB: "abced"))
print(stringRotationB(inputA: "abc", inputB: "a"))
