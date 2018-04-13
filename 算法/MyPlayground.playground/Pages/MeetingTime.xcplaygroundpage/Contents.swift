//: [Previous](@previous)

/*:
 已知有很多会议，如果有这些会议时间有重叠，则将它们合并。
 比如有一个会议的时间为3点到5点，另一个会议时间为4点到6点，那么合并之后的会议时间为3点到6点
 */

struct MeetingTime {
    var start: Int
    var end: Int
    init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

let m1 = MeetingTime(3,5)
let m2 = MeetingTime(4,6)
//let m3 = MeetingTime(7,9)
//let m4 = MeetingTime(1,3)

func merge(_ meetingTimes: [MeetingTime]) -> [MeetingTime] {
    return [m1]
}

func sortStartTime(_ meetingTimes: [MeetingTime]) {
    meetingTimes.sorted { (tm1, tm2) -> Bool in
        return tm1.start > tm2.start
    }
}


//: [Next](@next)
