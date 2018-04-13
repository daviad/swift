//: [Previous](@previous)

/*:
 一道以前的Google面试题。
 
 Given an input string, reverse the string word by word.
 A word is defined as a sequence of non-space characters.
 The input string does not contain leading or trailing spaces and the words are always separated by a single space.
 
 For example
 * Given s = "the sky is blue",
 * return "blue is sky the".
 * Could you do it in-place without allocating extra space?
 
 */


import Foundation

fileprivate func _reverse<T>(_ chars: inout [T], _ start: Int, _ end: Int) {
    var start = start, end = end
    
    while start < end {
        _swap(&chars, start, end)
        start += 1
        end -= 1
    }
}

fileprivate func _swap<T>(_ chars: inout [T], _ p: Int, _ q: Int) {
    (chars[p], chars[q]) = (chars[q], chars[p])
//    let char = chars[p]
//    chars[p] = chars[q]
//    chars[q] = char
}


func reverseWords(s: String?) -> String? {
    guard let s = s else {
        return nil
    }
    
    var chars = Array(s), start = 0
    print(type(of: chars))
    _reverse(&chars, 0, chars.count - 1)
    
    for i in 0 ..< chars.count {
        if i == chars.count - 1 || chars[i + 1] == " " {
            _reverse(&chars, start, i)
            start = i + 2
        }
    }
    
    return String(chars)
}

print(reverseWords(s: "the sky is blue")!)
/*:
swap c++ 算法网络资料
一、通用的函数交换模板

```
template<class T>
void swap(T &a,T &b)
{
    T c(a);
    a=b;
    b=c;
}
```
T为类型，可根据实际需要使用相应的类型

二、针对int类型的优化

使用异或，整数异或本身为结果0；一个数异或0结果为本身；
位运算是C语言的一大特色，利用异或运算可以实现交换两个数，原理是***一个整数与另外一个数进行两次异或运算仍然是其本身***，基本原理用式子表达如下：
* (1) A ^ A = 0;

* (2) A = A ^ B;

* (3) B = A ^ B;(相当于B = A ^ B ^ B ,即 B = A)

* (4) A= A ^ B;(相当于A = A ^B ^A ,即A = B)

 
利用位运算不仅提高了代码的执行速度，而且此处还减少了对辅助变量的需求，因此提高了程序的效率。
```
void swap(int &a,int &b)
{
    a^=b;
    b^=a;       //相当于b=a
    a^=b;       //相当于a=b
}
 ```
 
三、自定义swap时，注意事项

达不到交换的作用
```
void swap(int a,int b)
{
    int temp=a;
    a=b;
    b=temp;
}
 ```
 
这里只是交换了a和b实参的副本，而它们本身没有交换。

2、能达到交换的作用

```
void swap(int *a,int *b)
{
    int temp;
    temp=*a;
    *a=*b;
    *b=temp;
}


int main()
    {
        int a=1,b=2;
        swap(&a,&b);
        return 0;
}
```
 
注意，第三行中，不要将temp定义为一个指针，因为没有初始化指针而去使用它很危险。
*/

//: [Next](@next)
