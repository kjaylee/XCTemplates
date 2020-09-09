//___FILEHEADER___

import RIBs
import RxSwift
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Routing
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Routing: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Presentable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Presentable: Presentable {
    var listener: ___VARIABLE_productName___PresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Listener
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Listener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}
/**
## 클래스 설명
* ___VARIABLE_rootName___Interactor
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_rootName___Interactor: PresentableInteractor<___VARIABLE_rootName___Presentable>, ___VARIABLE_rootName___Interactable, ___VARIABLE_rootName___PresentableListener {

    weak var router: ___VARIABLE_rootName___Routing?
    weak var listener: ___VARIABLE_rootName___Listener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: ___VARIABLE_rootName___Presentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}
