import UIKit

var str = "Hello, playground"

func fuzzContainer(inputA: String, inputB: String) -> Bool {
    return (inputA.uppercased().range(of: inputB.uppercased()) != nil)
}

print(fuzzContainer(inputA: "Hello, world", inputB: "Hello"))
print(fuzzContainer(inputA: "Hello, world", inputB: "World"))
print(fuzzContainer(inputA: "Hello, world", inputB: "Goodbye"))
