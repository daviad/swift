//: [Previous](@previous)

/*:
 Given an absolute path for a file (Unix-style), simplify it.
 * For example,
 * path = "/home/", => "/home"
 * path = "/a/./b/../../c/", => "/c"
 
 根据常识，我们知道以下规则：
 * . 代表当前路径。比如 /a/. 实际上就是 /a，无论输入多少个 . 都返回当前目录
 * ..代表上一级目录。比如 /a/b/.. 实际上就是 /a，也就是说先进入a目录，再进入其下的b目录，再返回b目录的上一层，也就是a目录。
 然后针对以上信息，我们可以得出以下思路：
 
 首先输入是个 String，代表路径。输出要求也是 String, 同样代表路径。
 我们可以把 input 根据 “/” 符号去拆分，比如 "/a/b/./../d/" 就拆成了一个String数组["a", "b", ".", "..", "d"]
 创立一个栈然后遍历拆分后的 String 数组，对于一般 String ，直接加入到栈中，对于 ".." 那我们就对栈做pop操作，其他情况不处理
 
 */
import Foundation

func simplifyPath(path: String) -> String {
    // 用数组来实现栈的功能
    var pathStack = [String]()
    // 拆分原路径
    let paths = path.components(separatedBy: "/")
    
    for path in paths {
        // 对于 "." 我们直接跳过
        guard path != "." else {
            continue
        }
        // 对于 ".." 我们使用pop操作
        if path == ".."  {
            if (pathStack.count > 0) {
                pathStack.removeLast()
            }
            // 对于太注意空数组的特殊情况
        } else if path != "" {
            pathStack.append(path)
        }
    }
    // 将栈中的内容转化为优化后的新路径
    let res = pathStack.reduce("") { total, dir in "\(total)/\(dir)" }
    // 注意空路径的结果是 "/"
    return res.isEmpty ? "/" : res
}
simplifyPath(path: "/a/./b/../../c/")

//protocol Stack {
//    /// 持有的元素类型
//    associatedtype Element
//
//    /// 是否为空
//    var isEmpty: Bool { get }
//    /// 栈的大小
//    var size: Int { get }
//    /// 栈顶元素
//    var peek: Element? { get }
//
//    /// 进栈
//    mutating func push(_ newElement: Element)
//    /// 出栈
//    mutating func pop() -> Element?
//}
//
//struct IntegerStack: Stack {
//    typealias Element = Int
//
//    var isEmpty: Bool { return stack.isEmpty }
//    var size: Int { return stack.count }
//    var peek: Element? { return stack.last }
//
//    private var stack = [Element]()
//
//    func push(_ newElement: Element) {
//        stack.append(newElement)
//    }
//
//    func pop() -> Element? {
//        return stack.popLast()
//    }
//}
//
//protocol Queue {
//    /// 持有的元素类型
//    associatedtype Element
//
//    /// 是否为空
//    var isEmpty: Bool { get }
//    /// 栈的大小
//    var size: Int { get }
//    /// 栈顶元素
//    var peek: Element? { get }
//
//    /// 入队
//    mutating func enqueue(_ newElement: Element)
//    /// 出队
//    mutating func dequeue() -> Element?
//}
//
//struct IntegerQueue: Queue {
//    typealias Element = Int
//
//    var isEmpty: Bool { return left.isEmpty && right.isEmpty }
//    var size: Int { return left.count + right.count }
//    var peek: Element? { return left.isEmpty ? right.first : left.last }
//
//    private var left = [Element]()
//    private var right = [Element]()
//
//    mutating func enqueue(_ newElement: Element) {
//        right.append(newElement)
//    }
//
//    mutating func dequeue() -> Element? {
//        if left.isEmpty {
//            left = right.reversed()
//            right.removeAll()
//        }
//        return left.popLast()
//    }
//}



//: [Next](@next)
