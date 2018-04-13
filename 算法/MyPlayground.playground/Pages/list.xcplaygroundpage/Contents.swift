//: [Previous](@previous)
/*: # 链表
 ## 主要内容
* 链表基本结构
* Dummy节点
* 尾插法
* 快行指针
 */

/*:
 ## 基本结构
对于链表的概念，实在是基本概念太多，这里不做赘述。我们直接来实现链表节点。
*/
class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

 
//: 有了节点，就可以实现链表了。

class List {
    var head: ListNode?
    var tail: ListNode?
    
    // 尾插法
    func appendToTail(_ val: Int) {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        } else {
            tail!.next = ListNode(val)
            tail = tail!.next
        }
    }
    
    // 头插法
    func appendToHead(_ val: Int) {
        if head == nil {
            head = ListNode(val)
            tail = head
        } else {
            let temp = ListNode(val)
            temp.next = head
            head = temp
        }
    }
}

/*:
有了上面的基本操作，我们来看如何解决复杂的问题。

## Dummy节点和尾插法
话不多说，我们直接先来看下面一道题目。
>给一个链表和一个值x，要求将链表中所有小于x的值放到左边，所有大于等于x的值放到右边。原链表的节点顺序不能变。
例：1->5->3->2->4->2，给定x = 3。则我们要返回 1->2->2->5->3->4
*/
func getLeftList(_ head: ListNode?, _ x: Int) -> ListNode? {
    let dummy = ListNode(0)
    var pre = dummy
    var node = head
    
    while node != nil {
        if node!.val < x {
            pre.next = node
            pre = node!
        }
        node = node!.next
    }
    
    node.next = nil
    return dummy.next
}

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    // 引入Dummy节点
    let prevDummy = ListNode(0)
    var prev = prevDummy
    let postDummy = ListNode(0)
    var post = postDummy
    
    var node = head
    
    // 用尾插法处理左边和右边
    while node != nil {
        if node!.val < x {
            prev.next = node
            prev = node!
        } else {
            post.next = node
            post = node!
        }
        node = node!.next
    }
    
    // 左右拼接
    post.next = nil
    prev.next = postDummy.next
    
    return prevDummy.next
}


//: [Next](@next)
