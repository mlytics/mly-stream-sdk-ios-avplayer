import UIKit

class DemoConfig {
    static var prod = DemoConfig(
        "cegh8d9j11u91ba1u600",
        "vsp.mlytics.com",
        "https://vsp-stream.s3.ap-northeast-1.amazonaws.com/HLS/raw/SpaceX.m3u8"
    )

    static var defaultConfig = prod

    var id: String
    var server: String
    var url: String

    init(_ id: String, _ server: String, _ url: String) {
        self.id = id
        self.server = server
        self.url = url
    }
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window?.rootViewController = UINavigationController(rootViewController: PlayerViewController())
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_: UIApplication) {}

    func applicationDidEnterBackground(_: UIApplication) {}

    func applicationWillEnterForeground(_: UIApplication) {}

    func applicationDidBecomeActive(_: UIApplication) {}

    func applicationWillTerminate(_: UIApplication) {}
}
