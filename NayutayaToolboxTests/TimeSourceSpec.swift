
import Quick
import Nimble
@testable import NayutayaToolbox

class TimeSourceSpec : QuickSpec {
    override func spec() {
        describe("UnixTimeSource") {
            describe("#time") {
                it("") {
                    let timeSource = UnixTimeSource()
                    let time1 = timeSource.time
                    expect(time1) > 0
                    sleep(1)
                    let time2 = timeSource.time
                    expect(time2) > 0
                    expect(time2) > time1
                }
            }
        }

        describe("ElapsedTimeSource") {
            describe("#time") {
                it("") {
                    let timeSource = ElapsedTimeSource()
                    let time1 = timeSource.time
                    expect(time1) > 0
                    sleep(1)
                    let time2 = timeSource.time
                    expect(time2) > 0
                    expect(time2) > time1
                }
            }
        }

        describe("MockTimeSource") {
            describe("#time") {
                it("") {
                    let timeSource = MockTimeSource(1)
                    expect(timeSource.time) == 1
                    sleep(1)
                    expect(timeSource.time) == 1
                    timeSource.time = 2
                    expect(timeSource.time) == 2
                }
            }
        }
    }
}
