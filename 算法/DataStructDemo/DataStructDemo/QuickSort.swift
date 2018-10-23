//
//  QuickSort.swift
//  DataStructDemo
//
//  Created by  dingxiuwei on 2018/5/25.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation
/*

*/

class QuickSortTest: NSObject {
    
    func test() {
        var arr:[Int] = [2,1,9,5,4,8,6,8,10,2,4,5,19]
        arr = [3,8,10,2,4,9];
        self.sort2(&arr, 0, arr.count - 1);
        print("\(arr)")
    }
    
    func sort(_ data:inout [Int],_ lf: Int, _ rg: Int) {
        if (rg > lf) {
                var left = lf
                var right = rg
                let pivot = data[left]
                while left < right {
                    while (pivot <= data[right] && left < right) {
                        right -= 1
                    }
                    data[left] = data[right]
                    
                    while (pivot >= data[left] && left < right) {
                        left += 1
                    }
                    data[right] = data[left]
                }
                data[left] = pivot
                sort(&data,lf,left - 1)
                sort(&data,left + 1,rg)
        }
    }
    
    func sort2(_ data:inout [Int], _ left: Int, _ right: Int) {
        if left >= right {
            return
        }
        var i = left
        var j = right
        let pivot = data[left]
        while i < j {
            while (pivot <= data[j] && i < j) {
                j -= 1
            }
            while (pivot >= data[i] && i < j) {
                i += 1
            }
            data.swapAt(i, j)
        }
        data.swapAt(left, i)
        
        sort(&data, left, i - 1)
        sort(&data, i + 1 , right)
        
    }
    
    func sortT(data: inout [Int], left: Int, right: Int) {
        guard left < right else {
                return
        }
        var lt = left
        var rt = right
        let keyValue = data[left]
        while lt < rt {
            while keyValue < data[rt] {
                rt -= 1
            }
            while keyValue > data[lt] {
                lt += 1
            }
            data.swapAt(rt, lt)
        }
        data[left] = keyValue
        
    }
}
