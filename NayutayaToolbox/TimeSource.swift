
import Foundation

// 時刻源プロトコル
protocol TimeSource {
    var time: Int64 { get }
}

// UNIX時間（単位：ミリ秒）を用いる時刻源クラス
public class UnixTimeSource : NSObject, TimeSource {
    public var time: Int64 {
        return Int64(NSDate().timeIntervalSince1970 * 1000)
    }
}

// システム起動からの時間（単位：ミリ秒）を用いる時刻源クラス
public class ElapsedTimeSource : NSObject, TimeSource {
    public var time: Int64 {
        let processInfo = NSProcessInfo.processInfo()
        return Int64(processInfo.systemUptime * 1000)
    }
}

// テスト用の模擬時刻源クラス
public class MockTimeSource : NSObject, TimeSource {
    public var time: Int64

    init(_ time: Int64) {
        self.time = time
    }
}
