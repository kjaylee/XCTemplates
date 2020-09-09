//___FILEHEADER___

import RIBs
/**
## 프로토콜 설명
* ___VARIABLE_productName___Dependency
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___Dependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}
/**
## 클래스 설명
* ___VARIABLE_productName___Component
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_productName___Component: Component<___VARIABLE_productName___Dependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder
/**
## 프로토콜 설명
* ___VARIABLE_productName___Buildable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_productName___Buildable: Buildable {
    func build() -> LaunchRouting
}
/**
## 클래스 설명
* ___VARIABLE_productName___Builder
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_productName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_productName___Builder: Builder<___VARIABLE_productName___Dependency>, ___VARIABLE_productName___Buildable {
    override init(dependency: ___VARIABLE_productName___Dependency) {
        super.init(dependency: dependency)
    }
    func build() -> LaunchRouting {
        let component = ___VARIABLE_productName___Component(dependency: dependency)
        let viewController = ___VARIABLE_productName___ViewController()
        let interactor = ___VARIABLE_productName___Interactor(presenter: viewController)
        return ___VARIABLE_productName___Router(interactor: interactor, viewController: viewController)
    }
}
