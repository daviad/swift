////: A UIKit based Playground for presenting user interface
//
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

// 链接：https://www.jianshu.com/p/ee16bcf50a59

//我们可以使用泛型编程，并配合Tuple，在配合上断言，就写出了灵活度很高的交换方法。代码如下：

func swap2<T>(_ array: inout [T],  _ p: Int, _ q: Int) {
    assert(p >= 0 && p < array.count)
    assert(q >= 0 && q < array.count)

    (array[p], array[q]) = (array[q], array[p])
}

var str = "abcdef"




