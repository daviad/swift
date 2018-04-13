//: [Previous](@previous)

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

func towSunSet(nums: [Int], _ target: Int) -> Set<Int> {
    var set = Set<Int>()
    nums.forEach { (i) in
        set.insert(i)
    }
    var indexSet = Set<Int>()
    
    for (i , n) in nums.enumerated() {
        if set.contains(target - n) {
            indexSet.insert(i)
        }
    }
    return indexSet
}



print(towSunSet(nums: [1,2,3,4], 3))

func twoSumDic(nums: [Int], _ target: Int) -> [Int] {
    var dict = [Int: Int]()
    
    for (i, num) in nums.enumerated() {
        if let lastIndex = dict[target - num] {
            return [lastIndex, i]
        } else {
            dict[num] = i
        }
    }
    
    fatalError("No valid output!")
}

print(twoSumDic(nums: [1,2,3,4], 3))

//: [Next](@next)
