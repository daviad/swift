//: [Previous](@previous)
//:数组 [深入探究Swift数组背后的协议、方法、拓展](http://www.cocoachina.com/ios/20151218/14716.html)
/*:
下面通过一个样例演示如何对数组元素进行排序。数组内为自定义用户对象，最终要实现按用户名排序，数据如下：
```
var userList = [UserInfo]()
userList.append(UserInfo(name: "张三", phone: "4234"))
userList.append(UserInfo(name: "李四", phone: "1212"))
userList.append(UserInfo(name: "航歌", phone: "3525"))
```
 
方法1
```
userList.sortInPlace(onSort)

func onSort(s1:UserInfo, s2:UserInfo) -> Bool{
    return s1.name > s2.name
}
```
 
方法2
```
userList.sortInPlace({$0.name > $1.name})
```
*/

//: # 字符串
//: >字符串在算法实战中极其常见。在Swift中，字符串不同于其他语言（包括Objective-C），它是值类型而非引用类型。首先还是列举一下字符串的通常用法：

//: 字符串和数字之间的转换
let str = "3678"
let num = Int(str)
let number = 3
let string = String(describing: num)

//: 字符串长度
let len = str.count

//: 访问字符串中的单个字符，时间复杂度为O(1)
let index = str.index(str.startIndex, offsetBy: 2)
let char = str[index]
//: 修改字符串
var str1 = String(str)
str1.remove(at: index)
str1.append("c")
str1 += " hello world"

//: 检测字符串是否是由数字构成
func isStrNum(str: String) -> Bool {
    return Int(str) != nil
}

//: 将字符串按字母排序(不考虑大小写)
func sortStr(str: String) -> String {
    return String(str.sorted())
}

//: [Next](@next)
