//: [Previous](@previous)

import Foundation
/*
 https://segmentfault.com/a/1190000002464158
 
 Generators 与 Sequences 浅析
 
Generators与Sequences构成了Swift式循环。
 
 提到数组我们就会想到遍历，一般的遍历可能都是从头到尾进行的。但是如果你有特殊的需求呢。你可能不想呆板的进行遍历。这时候Generators就可以派上用场了。
 
 一个字：Generators的存在是进行特殊癖好的数组遍历，其筛选出符合该癖好的下标索引到数组没有元素为止。
 
 好处是啥
 好处是啥，我的总结是把一个很抽象遍历模式使用Generators的方式剥离出来，当你对当前的迭代循环方式不爽的时候只需要修改一下当前的这个generator。更直观的“头疼医头，脚疼医脚”。
 
 
 Generators在循环过程中每个元素提供的服务是一次性的。所以我们想做倒回操作的话需要生成一个新的generator。若不想这样则需要用上sequence，其遵从另外一个协议SequenceType：
 
 好处是啥
 不用每次进行Loop操作的时候都去生成一个新的generator，提升代码的统一性。
 
*/
//: [Next](@next)
