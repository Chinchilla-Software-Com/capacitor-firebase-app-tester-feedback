import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(FirebaseAppTesterFeebackPlugin)
public class FirebaseAppTesterFeebackPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "FirebaseAppTesterFeebackPlugin"
    public let jsName = "FirebaseAppTesterFeeback"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = FirebaseAppTesterFeeback()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
