//___FILEHEADER___
/** AppDelegate Example
import RIBs
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var launchRouter: LaunchRouting?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        self.launchRouter = ___VARIABLE_productName___Builder(dependency: AppComponent()).build()
        self.launchRouter?.launchFromWindow(window)
        return true
    }
}
*/

import RIBs
/**
## 클래스 설명
* ___VARIABLE_productName___Router
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
class AppComponent: Component<EmptyDependency>, ___VARIABLE_productName___Dependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}


