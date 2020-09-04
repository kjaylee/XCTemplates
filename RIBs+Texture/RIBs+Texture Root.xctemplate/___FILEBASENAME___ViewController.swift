//___FILEHEADER___

import RIBs
import RxSwift
import AsyncDisplayKit

protocol ___VARIABLE_productName___PresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

/**
## 클래스 설명
* ___VARIABLE_productName___ViewController
* <# 요약 #>

## 기본정보
* Note: APP
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_productName___ViewController: ASNavigationController, ___VARIABLE_productName___Presentable, ___VARIABLE_productName___ViewControllable {
    weak var listener: ___VARIABLE_productName___PresentableListener?
    init() {
        super.init(rootViewController: ___VARIABLE_childName___ViewController())
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
