
import Foundation

/// 時刻源プロトコル。
public protocol TimeSource {
    /// 時刻。
    var time: Int64 { get }
}

/// UNIX時間（単位：ミリ秒）を用いる時刻源クラス。
public class UnixTimeSource : NSObject, TimeSource {
    /// 時刻。UNIX時間をミリ秒単位で返す。
    public var time: Int64 {
        return Int64(NSDate().timeIntervalSince1970 * 1000)
    }
}

/// システム起動からの時間（単位：ミリ秒）を用いる時刻源クラス。
public class ElapsedTimeSource : NSObject, TimeSource {
    private let processInfo = NSProcessInfo.processInfo()

    /// 時刻。システム起動からの時間をミリ秒単位で返す。
    public var time: Int64 {
        return Int64(self.processInfo.systemUptime * 1000)
    }
}

/// テスト用の模擬時刻源クラス。
public class MockTimeSource : NSObject, TimeSource {
    /// 時刻。
    public var time: Int64

    /// 指定した時刻で初期化する。
    /// - parameter time: 時刻。
    public init(_ time: Int64) {
        self.time = time
    }
}
