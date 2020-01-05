import UIKit

// Error: Binary operator '==' cannot be applied to operands of type 'String' and 'ReversedCollection<(String)>'
func challenge2a(input: String) -> Bool {
    return input == String(input.reversed())
}

print(challenge2a(input: "rotator"), true)
print(challenge2a(input: "Rats live on no evil star"), true)
print(challenge2a(input: "Never odd or even"), false)
print(challenge2a(input: "Hello, world"), false)


// Ignoring the lowercase alphabet
func challenge2b(input: String) -> Bool {
    var lowercase = input.lowercased()
    return lowercase == String(lowercase.reversed())
}

print(challenge2b(input: "rotator"), true)
print(challenge2b(input: "Rats live on no evil star"), true)
print(challenge2b(input: "Never odd or even"), false)
print(challenge2b(input: "Hello, world"), false)
