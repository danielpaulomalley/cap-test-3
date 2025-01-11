import Foundation
import Capacitor
import BRLMPrinterKit

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapTest3Plugin)
public class CapTest3Plugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "CapTest3Plugin"
    public let jsName = "CapTest3"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "printSomething", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = CapTest3()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func printSomething(_ call: CAPPluginCall) {
        let channels = BRLMPrinterSearcher.startBluetoothSearch().channels
        print(channels.count)
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": ""
        ])
    }
}
