
public class DeviceEnvironment {
    private let device: UIDevice
    
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
}
