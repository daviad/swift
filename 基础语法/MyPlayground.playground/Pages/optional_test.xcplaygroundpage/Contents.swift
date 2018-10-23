//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

let tq: Int? = 1
let b = tq.map { (a: Int) -> Int in
    if a % 2 == 0 {
        return a
    } else {
        return 3
    }
}

if let _ = b {
    print("b not nil \(b)")
}

let c = tq.flatMap { (a: Int) -> Int? in
    if a % 2 == 0 {
        return a
    } else {
        return nil
    }
}
if let _ = c {
    print("not nil")
} else {
    print("c is \(c)")
}
//: [Next](@next)
