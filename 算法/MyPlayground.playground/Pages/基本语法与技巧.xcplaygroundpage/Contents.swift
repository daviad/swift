////: A UIKit based Playground for presenting user interface
//
//import UIKit
//import PlaygroundSupport

import XCPlayground

//: # 第一页
//: > 这仅仅是个测试

//MARK: - 在代码的某处添加一个标签，可以使查看类视图更加方便

//TODO: - 将来可能会继续编辑的部分

//FIXME: - 将要修改的部分

/**
 
算法注释

算法是相对比较复杂的方法，我们通过注释对其进行详尽的说明，其文档注释使用的关键字如下：

/// - Precondition: 前置条件
/// - Postcondition: 后置条件
/// - Requires:  算法需要的信息
/// - Invariant:  循环不变量
/// - Complexity: 复杂度
/// - Important: 描述重要信息
/// - Warning:  描述警告信息
/// - Attention: 描述注意事项
/// - Note:  一些记录
/// - Remark:  一些评论心得
*/


//: 链接：https://www.jianshu.com/p/ee16bcf50a59

//我们可以使用泛型编程，并配合Tuple，在配合上断言，就写出了灵活度很高的交换方法。代码如下：

//交换一个数组中的两个值
func swap2<T>(_ array: inout [T],  _ p: Int, _ q: Int) {
    assert(p >= 0 && p < array.count)
    assert(q >= 0 && q < array.count)

    (array[p], array[q]) = (array[q], array[p])
}

//var cArrary = [Character]()
var cArrary: [Character] = ["a","b","c","d"]
swap2(&cArrary, 1, 2);

func toZero(x: inout Int) -> Int {
    while x > 0 {
//       var x -= 1
//        var x = x
            x -= 1
    }
    return x
}

//guard 条件 else {
//    //条件语句
//    break
//}
//代码...

var age = 18

func online(age : Int) -> Void {
    guard age >= 18 else {
        print("回家去")
        return
    }
    
    print("可以上网")
}

online(age:age) // 可以上网

//mark - 数组

// 声明一个不可修改的数组
//let nums = [1, 2, 3]
//let nums = [Int](repeating: 0, count: 5)

//// 声明一个可以修改的数组
var nums = [3, 1, 2]
//// 增加一个元素
//nums.append(4)
//// 对原数组进行升序排序
//nums.sort()
//// 对原数组进行降序排序
nums.sort(by: >)
//// 将原数组除了最后一个以外的所有元素赋值给另一个数组
//let anotherNums = Array(nums[0 ..< nums.count - 1])

// mark--  参照 Swift 烧脑系列文章列表：
// Swift相比于Objective-C又一个重要的优点，它对函数式编程提供了很好的支持，Swift提供了map、filter、reduce这三个高阶函数作为对容器的支持。

//1 map：可以对数组中的每一个元素做一次处理

// 计算字符串的长度
//let stringArray = ["Objective-C", "Swift", "HTML", "CSS", "JavaScript"]
//func stringCount(string: String) -> Int {
//    return string.characters.count
//}
//stringArray.map(stringCount)
//
//stringArray.map({string -> Int in
//    return string.characters.count
//})
//
//// $0代表数组中的每一个元素
//stringArray.map{
//    return $0.characters.count
//}

////2 flatMap与map不同之处：
//
//　　（1）flatMap返回后的数组中不存在nil，同时它会把Optional解包
//
//复制代码
//let array = ["Apple", "Orange", "Puple", ""]
//
//let arr1 = array.map { a -> Int? in
//    let length = a.characters.count
//    guard length > 0 else { return nil }
//    return length
//}
//
//arr1 // [{some 5}, {some 6}, {some 5}, nil]
//print(type(of: array.last))
//
//let arr2 = array.flatMap { a-> Int? in
//    let length = a.characters.count
//    guard length > 0 else { return nil}
//    return length
//}
//arr2 // [5, 6, 5]

//　（2）flatMap还能把数组中存有数组的数组（二维数组、N维数组）一同打开变成一个新的数组
//
//let array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//
//let arr1 = array.map{ $0 }
//arr1 // [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//
//let arr2 = array.flatMap{ $0 }
//arr2 // [1, 2, 3, 4, 5, 6, 7, 8, 9]

//　　（3）flatMap也能把两个不同的数组合并成一个数组，这个合并的数组元素个数是前面两个数组元素个数的乘积

//let fruits = ["Apple", "Orange", "Puple"]
//let counts = [2, 3, 5]
//
//let array = counts.flatMap { count in
//    fruits.map ({ fruit in
//        return fruit + "  \(count)"
//    })
//}
//array // ["Apple 2", "Orange 2", "Puple 2", "Apple 3", "Orange 3", "Puple 3", "Apple 5", "Orange 5", "Puple 5"]

//3 filer：过滤，可以对数组中的元素按照某种规则进行一次过滤
//
//复制代码
//// 筛选出字符串的长度小于10的字符串
//let stringArray = ["Objective-C", "Swift", "HTML", "CSS", "JavaScript"]
//func stringCountLess10(string: String) -> Bool {
//    return string.characters.count < 10
//}
//stringArray.filter(stringCountLess10)
//
//stringArray.filter({string -> Bool in
//    return string.characters.count < 10
//})
//
//// $0表示数组中的每一个元素
//stringArray.filter{
//    return $0.characters.count < 10
//}
//复制代码
//4 reduce：计算，可以对数组的元素进行计算
//
//复制代码
//// 将数组中的每个字符串用‘、’拼接
//let stringArray = ["Objective-C", "Swift", "HTML", "CSS", "JavaScript"]
//
//func appendString(string1: String, string2: String) -> String {
//    return string1 == "" ? string2 : string1 + "、" + string2
//}
//// reduce方法中的第一个参数是初始值
//stringArray.reduce("", appendString)
//
//stringArray.reduce("", {(string1, string2) -> String in
//    return string1 == "" ? string2 : string1 + "、" + string2
//})
//
//// $0表示计算后的结果, $1表示数组中的每一个元素
//stringArray.reduce("", {
//    return $0 == "" ? $1 : $0 + "、" + $1
//})
////复制代码
var xxxx = "hello".map { ($0, 1) }
print(xxxx)
var yyyyy = Dictionary("hello".map { ($0, 1) }, uniquingKeysWith: +)
print(yyyyy)


func twoSum(nums: [Int], _ target: Int) -> Bool {
    var set = Set<Int>()
    
    for num in nums {
        if set.contains(target - num) {
            return true
        }
        
        set.insert(num)
    }
    
    return false
}

twoSum(nums: [1,2,3,4], 3)

func towSunDic(nums: [Int], _ target: Int) -> Set<Int> {
    var set = Set<Int>()
    nums.forEach { (i) in
        set.insert(i)
    }
    var indexSet = Set<Int>()
    
    for (i , n) in nums.enumerated() {
        if set.contains(n) {
            indexSet.insert(i)
        }
    }
    return indexSet;
}

towSunDic(nums: [1,2,3,4], 3)
//: [Next](@next)
