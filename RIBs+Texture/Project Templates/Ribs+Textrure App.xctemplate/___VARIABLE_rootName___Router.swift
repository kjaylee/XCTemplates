//___FILEHEADER___

import RIBs
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Interactable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Interactable: Interactable {
    var router: ___VARIABLE_rootName___Routing? { get set }
    var listener: ___VARIABLE_rootName___Listener? { get set }
}
/**
## 프로토콜 설명
* ___VARIABLE_rootName___ViewControllable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/protocol ___VARIABLE_rootName___ViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}
/**
## 클래스 설명
* ___VARIABLE_rootName___Router
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_rootName___Router: LaunchRouter<___VARIABLE_rootName___Interactable, ___VARIABLE_rootName___ViewControllable>, ___VARIABLE_rootName___Routing {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: ___VARIABLE_rootName___Interactable, viewController: ___VARIABLE_rootName___ViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
