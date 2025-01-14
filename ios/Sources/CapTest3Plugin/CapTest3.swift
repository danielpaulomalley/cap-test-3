import Foundation

@objc public class CapTest3: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
