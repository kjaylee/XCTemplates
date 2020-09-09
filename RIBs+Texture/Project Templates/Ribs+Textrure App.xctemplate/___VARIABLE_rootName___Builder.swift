//___FILEHEADER___

import RIBs
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Dependency
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Dependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}
/**
## 클래스 설명
* ___VARIABLE_rootName___Component
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_rootName___Component: Component<___VARIABLE_rootName___Dependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder
/**
## 프로토콜 설명
* ___VARIABLE_rootName___Buildable
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
protocol ___VARIABLE_rootName___Buildable: Buildable {
    func build() -> LaunchRouting
}
/**
## 클래스 설명
* ___VARIABLE_rootName___Builder
* <# 요약 #>

## 기본정보
* Note: ___VARIABLE_rootName___
* See: <# 제플린 없음 #>
* Author: ___FULLUSERNAME___
* Since: ___DATE___
*/
final class ___VARIABLE_rootName___Builder: Builder<___VARIABLE_rootName___Dependency>, ___VARIABLE_rootName___Buildable {
    override init(dependency: ___VARIABLE_rootName___Dependency) {
        super.init(dependency: dependency)
    }
    func build() -> LaunchRouting {
        let component = ___VARIABLE_rootName___Component(dependency: dependency)
        let viewController = ___VARIABLE_rootName___NavigationController()
        let interactor = ___VARIABLE_rootName___Interactor(presenter: viewController)
        return ___VARIABLE_rootName___Router(interactor: interactor, viewController: viewController)
    }
}
