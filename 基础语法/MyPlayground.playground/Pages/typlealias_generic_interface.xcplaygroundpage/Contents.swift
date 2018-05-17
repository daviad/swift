//: [Previous](@previous)

import Foundation

var str = "IOS_Swift_TYPEALIAS 和泛型接口"
//IOS_Swift_TYPEALIAS 和泛型接口
//https://blog.csdn.net/zimo2013/article/details/50296249
//另一个值得一提的是 Swift 中是没有泛型接口的，但是使用 typealias，我们可以在接口里定义一个必须实现的别名，这在一定范围内也算一种折衷方案。比如在 GeneratorType 和 SequenceType 这两个接口中，Swift 都用到了这个技巧，来为接口确定一个使用的类似泛型的特性：
//protocol GeneratorType {
//    typealias Element
//    mutating func next() -> Element?
//}
//
//protocol SequenceType : _Sequence_Type {
//    typealias Generator : GeneratorType
//    func generate() -> Generator
//}
//在实现这些接口时，我们不仅需要实现指定的方法，还要实现对应的 typealias，这其实是一种对于接口适用范围的抽象和约束。
//: [Next](@next)
