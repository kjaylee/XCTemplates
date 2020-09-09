//___FILEHEADER___

import RIBs
import RxSwift
/**
## 프로토콜 설명
* ___VARIABLE_productName___Routing
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___Routing: Routing {
    func cleanupViews()
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}
/**
## 프로토콜 설명
* ___VARIABLE_productName___Listener
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___Listener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}
/**
## 클래스 설명
* ___VARIABLE_productName___Interactor
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_productName___Interactor: Interactor, ___VARIABLE_productName___Interactable {

    weak var router: ___VARIABLE_productName___Routing?
    weak var listener: ___VARIABLE_productName___Listener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init() {}

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()

        router?.cleanupViews()
        // TODO: Pause any business logic.
    }
}
