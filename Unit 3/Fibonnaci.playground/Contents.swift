import Foundation

// fibonacci is a sequence of numbers
// where the current value is a result of
// adding the previous 2 values
// e.g 1, 1, 3, 5, 8, 13, 21....

// fibonacci without using dynamic programming
// dynamic programming is using recursion along with memoization
// memoization - storing calculations and retrieving later when needed, this prevents and adds performance to complex problems, e.g. fibonacci


func fibonacci(num: Int) -> Int {
    guard num > 1 else { return 1 } // base case
    return fibonacci(num: num - 1) + fibonacci(num: num - 2)
}
fibonacci(num: 20)

var fibValues = [Int : Int]()
func fibonacciUsingDynamicProgramming(num: Int) -> Int {
    // checking if fibonacci calculation exist
    if let fib = fibValues[num] {
        return fib
    }
    
    guard num > 1 else {
        fibValues[num] =  num
        return 1
    }
    
    // if the fibonacci calculation does exist, we need to perform it
    // fibonacci formula: (n-1) + (n-2)

    let fib = fibonacciUsingDynamicProgramming(num: num - 1) + fibonacciUsingDynamicProgramming(num: num - 2)
    // add calculation to fibValues dictionary
    fibValues[num] = fib
    return fib
}
fibonacciUsingDynamicProgramming(num: 20)
