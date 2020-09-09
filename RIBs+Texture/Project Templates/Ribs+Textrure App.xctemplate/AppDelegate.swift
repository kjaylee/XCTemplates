//___FILEHEADER___

import UIKit
import RIBs
/**
## 클래스 설명
* AppDelegate
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var launchRouter: LaunchRouting?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        self.launchRouter = ___VARIABLE_rootName___Builder(dependency: AppComponent()).build()
        self.launchRouter?.launchFromWindow(window)
        return true
    }
}

