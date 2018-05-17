//: [Previous](@previous)

import Foundation

var str = "operator overload"

//https://blog.csdn.net/mengxiangyue/article/details/43437797
/*
var sumArray = [1, 2] + [1, 2]

func add(left: [Int],right: [Int]) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (index,v) in left.enumerated() {
        sum.append(v + right[index]);
    }
    return sum
}
var arr1 = [1, 1]
var arr2 = [1, 1]
var arr3 = add(left:arr1, right:arr2)
print(arr3)

func +(left: [Int],right: [Int]) -> [Int] {
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (index,v) in left.enumerated() {
        sum.append(v + right[index]);
    }
    return sum
}
var arr4 = arr1 + arr2
print(arr4)

infix operator ⊕:AdditionPrecedence
precedencegroup AdditionPrecedence { associativity:left
//    higherThan: AdditionPrecedence
    lowerThan: MultiplicationPrecedence
}
func ⊕(left: [Int], right: [Int]) -> [Int] { // 2
    var sum = [Int]()
    assert(left.count == right.count, "vector of same length only")
    for (key, v) in left.enumerated() {
        sum[key] = v + right[key]
    }
    return sum
}

var arr5 = arr1 + arr2
print(arr4)
 */
//: [Next](@next)
