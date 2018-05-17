//: A UIKit based Playground for presenting user interface
  
//import UIKit
//import PlaygroundSupport
//
//class MyViewController : UIViewController {
//    override func loadView() {
//        let view = UIView()
//        view.backgroundColor = .white
//
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
//        label.text = "Hello World!"
//        label.textColor = .black
//
//        view.addSubview(label)
//        self.view = view
//    }
//}
//// Present the view controller in the Live View window
//PlaygroundPage.current.liveView = MyViewController()

/*
# 注释语法
//https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_markup_formatting_ref/index.html#//apple_ref/doc/uid/TP40016497-CH2-SW1
 */

/*
 Swift 空格
 Swift语言并不是像C/C++，Java那样完全忽视空格，Swift对空格的使用有一定的要求，但是又不像Python对缩进的要求那么严格。
 在Swift中，运算符不能直接跟在变量或常量的后面。例如下面的代码会报错：
 */
//let a=1 +2
//let b = 1+ 2
let c = 1+2   // 这样也是OK的
let d = 1 + 2  // 编码规范推荐使用这种写法

/*print 学习  查看帮助文档很清楚
 ctr(^) + cmd + space  emoji shortcut
 
 Swift：如何优雅地使用 print()（二）
 https://segmentfault.com/a/1190000006695018
 */
for x in 0...3 {
    print("\(x)",separator:"-",terminator:"")
}
print("");
print(1,2,3,4,separator:"*",terminator:"")
print("a","b","c","☺️",separator:"*")
print("");

/*
 Swift 可选(Optionals)类型
 要确保用括号给 ? 操作符一个合适的范围。例如，声明可选整数数组，应该写成 (Int[])? 写成 Int[]? 会报错。
 可选绑定
 使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。可选绑定可以用在if和while语句中来对可选类型的值进行判断并把值赋给一个常量或者变量。
 */
var optionalInteger: Int?
var optionalInteger2: Optional<Int>

var myString:String? = nil

if myString != nil {
    print(myString!)
}else{
    print("字符串为 nil")
}

//可选绑定实例：
var myString2:String?
myString2 = "Hello, Swift!"
if let yourString = myString2 {
    print("你的字符串值为 - \(yourString)")
}else{
    print("你的字符串没有值")
}
//字符(Character)
//Swift 的字符是一个单一的字符字符串字面量，数据类型为 Character。
let char1: Character = "A"
let char2: Character = "B"
print("char1 is \(char1)")
print("char2 is \(char2)")


//error
//let char: Character = "AB"
//print("Value of char \(char)")

/*
 Swift 函数
 Swift 函数用来完成特定任务的独立的代码块。
 Swift使用一个统一的语法来表示简单的C语言风格的函数到复杂的Objective-C语言风格的方法。
 函数声明: 告诉编译器函数的名字，返回类型及参数。
 函数定义: 提供了函数的实体。
 Swift 函数包含了参数类型及返回值类型：
 
 func funcname(形参) -> returntype
 {
 Statement1
 Statement2
 ……
 Statement N
 return parameters
 }

 */

func runoob(site: String) -> String {
    return (site)
}
print(runoob(site: "www.runoob.com"))




/*switf 闭包
 http://www.runoob.com/swift/swift-closures.html
 */
