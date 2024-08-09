import Foundation

@objc public class FirebaseAppTesterFeeback: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
