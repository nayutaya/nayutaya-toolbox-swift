
public class DeviceEnvironment {
    public let device: UIDevice
    
    init(device: UIDevice) {
        self.device = device
    }
    
    public static func currentDevice() -> DeviceEnvironment {
        let device = UIDevice.currentDevice()
        return DeviceEnvironment(device: device)
    }
    
    public var systemVersion: String {
        return self.device.systemVersion
    }
    
    public var hwMachine: String? {
        return DeviceEnvironment.getSystemInformationByName("hw.machine")
    }

    // REF: [Swift 1.2] iOS端末のプラットフォームを取得する - Qiita
    // http://qiita.com/Ary/items/c72d06f364fe0b1ce43f
    private static func getSystemInformationByName(name: String) -> String? {
        var size: Int = 0
        guard sysctlbyname(name, nil, &size, nil, 0) == 0 else { return nil }
        var buffer = [CChar](count: size, repeatedValue: 0)
        guard sysctlbyname(name, &buffer, &size, nil, 0) == 0 else { return nil }
        return String.fromCString(buffer)
    }
}
