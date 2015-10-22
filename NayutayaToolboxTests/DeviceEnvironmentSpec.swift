
import Quick
import Nimble
@testable import NayutayaToolbox

class DeviceEnvironmentSpec : QuickSpec {
    override func spec() {
        describe("#systemVersion") {
            it("") {
                let devEnv = DeviceEnvironment.currentDevice()
                expect(devEnv.systemVersion).toNot(beNil())
            }
        }

        describe("#hwMachine") {
            it("") {
                let devEnv = DeviceEnvironment.currentDevice()
                expect(devEnv.hwMachine).toNot(beNil())
            }
        }
    }
}
