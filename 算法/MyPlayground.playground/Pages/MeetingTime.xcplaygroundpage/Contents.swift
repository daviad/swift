//: [Previous](@previous)

/*:
 已知有很多会议，如果有这些会议时间有重叠，则将它们合并。
 比如有一个会议的时间为3点到5点，另一个会议时间为4点到6点，那么合并之后的会议时间为3点到6点
 */


class MeetingTime {
    var start: Int
    var end: Int
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
    func desc() {
        print("start:\(start),end:\(end)")
    }
}



func merge(_ meetingTimes: [MeetingTime]) -> [MeetingTime] {
    guard meetingTimes.count > 1 else {
        return meetingTimes
    }
    var meetingTimes = meetingTimes
    
    var ressults = [MeetingTime]()
    var lastMetting:MeetingTime = meetingTimes.first!
    meetingTimes = sortStartTime(&meetingTimes)
    print("sort result:")
    meetingTimes.forEach({$0.desc()})
    for mt in meetingTimes {
        if (mt.start >= lastMetting.start &&
           mt.start <= lastMetting.end) {
            lastMetting.end = mt.end
        } else {
            ressults.append(mt)
            lastMetting = mt
        }
    }
    return ressults
}

func sortStartTime(_ meetingTimes:inout [MeetingTime]) -> [MeetingTime] {
    return meetingTimes.sorted {
        if $0.start != $1.start {
            return  $0.start < $1.start
        } else {
            return  $0.end < $1.end
        }
    }
}




let m1 = MeetingTime(3,5)
let m2 = MeetingTime(4,6)
let m3 = MeetingTime(7,9)
let m4 = MeetingTime(1,3)
let m5 = MeetingTime(4,6)

let xx = merge([m2,m1,m3,m4,m5])
print("merge result:")
xx.forEach({$0.desc()})
//: [Next](@next)
