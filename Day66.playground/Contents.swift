import UIKit

var greeting = "Hello, playground"

//map is using in closure


let result = ({ (num: Double) -> Double in return num * num })(9.0)
print(result)

// 1. A "full" closure implementation
//({ (num: Double) -> Double in return num * num })(9.0)
// 2. Remove the return type of the closure.
//({ (num: Double) in return num * num })(9.0)
// 3. Remove the parameter type.
//({ num in return num * num })(9.0)
// 4. Remove the 'return' statement.
//({ num in num * num })(9.0)
// 5. Use '$0' instead of a custom parameter name.
//({ $0 * $0 })(9.0)
// 6. Remove parenthesis around the closure.
//{ $0 * $0 }(9.0)

//using map
let results = { $0 * $0 }(9.0)
print(results)
let num = [20,2,3,4,5]
let numbering = num.sorted { $0 > $1}
print(numbering)

//map with function

// A function that squares a number
func square(num: Int) -> Int {
    return num * num
}
let numbers = [1, 2, 3, 4, 5]
// Square each number in the numbers list
let squared = numbers.map(square)
print(squared)


//using it in dictionary

let data = [
    "name": "alice",
    "address": "imaginary street",
    "college": "oxford university"
]
let upperCased = data.map { $1.uppercased() }
print(upperCased)
