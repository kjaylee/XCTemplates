//___FILEHEADER___

import RIBs
/**
## 프로토콜 설명
* ___VARIABLE_productName___Interactable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___Interactable: Interactable {
    var router: ___VARIABLE_productName___Routing? { get set }
    var listener: ___VARIABLE_productName___Listener? { get set }
}
/**
## 프로토콜 설명
* ___VARIABLE_productName___ViewControllable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___ViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy. Since
    // this RIB does not own its own view, this protocol is conformed to by one of this
    // RIB's ancestor RIBs' view.
}
/**
## 클래스 설명
* ___VARIABLE_productName___Router
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/final class ___VARIABLE_productName___Router: Router<___VARIABLE_productName___Interactable>, ___VARIABLE_productName___Routing {

    // TODO: Constructor inject child builder protocols to allow building children.
    init(interactor: ___VARIABLE_productName___Interactable, viewController: ___VARIABLE_productName___ViewControllable) {
        self.viewController = viewController
        super.init(interactor: interactor)
        interactor.router = self
    }

    func cleanupViews() {
        // TODO: Since this router does not own its view, it needs to cleanup the views
        // it may have added to the view hierarchy, when its interactor is deactivated.
    }

    // MARK: - Private

    private let viewController: ___VARIABLE_productName___ViewControllable
}
