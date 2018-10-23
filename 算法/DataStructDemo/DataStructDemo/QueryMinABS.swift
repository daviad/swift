//
//  QueryMinABS.swift
//  DataStructDemo
//
//  Created by  dingxiuwei on 2018/10/11.
//  Copyright © 2018年 丁秀伟. All rights reserved.
//

import Foundation

class QueryMinABS: NSObject {
    func test() {
        let arr = [-5,-3,-2,1,2,4,5]
        let value = self.query(arr)
        print("The min abs is: \(value)")
    }
    
    func query(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        if arr[0] >= 0 {
            return arr[0]
        } else if arr[right] <= 0 {
            return arr[right]
        } else {
            var mid = 0
            while(arr[left] <= arr[right]) {
                mid = left + (right - left)/2
                if 0 == arr[mid] {
                    return arr[mid]
                } else if arr[mid] < 0 {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
            return min(abs(arr[left]), abs(right))
        }
    }
}
