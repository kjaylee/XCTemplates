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
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
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
*/
final class ___VARIABLE_productName___Router: ViewableRouter<___VARIABLE_productName___Interactable, ___VARIABLE_productName___ViewControllable>, ___VARIABLE_productName___Routing {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: ___VARIABLE_productName___Interactable, viewController: ___VARIABLE_productName___ViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
