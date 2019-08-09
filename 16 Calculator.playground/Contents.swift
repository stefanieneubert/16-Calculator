import UIKit



func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

// Functions

func add(no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply(no1: Int, no2: Int) -> Int {
    return no1 * no2
}

calculator(n1: 2, n2: 3, operation: multiply)


// Closures

calculator(n1: 2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 + no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in
    return no1 + no2
})

calculator(n1: 2, n2: 3, operation: { (no1, no2) in no1 + no2})

// $0 = first parameter
calculator(n1: 2, n2: 3, operation: { $0 + $1 })

// trailing closure
calculator(n1: 2, n2: 3) { $0 + $1 }


// Example with array and a function
let array = [1, 2, 3, 4, 5, 6, 7]

func addOne(n: Int) -> Int {
    return n + 1
}

array.map(addOne)

// with array and a closure
array.map({ (n: Int) -> Int in
    return n + 1
})

// with array and a trailing closure
let res1 = array.map{$0 + 1}
print(res1)

// make strings of each array item
let res2 = array.map{"\($0)"}
print(res2)
