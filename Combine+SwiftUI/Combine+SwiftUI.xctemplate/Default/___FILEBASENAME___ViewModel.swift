//___FILEHEADER___

import Foundation
import Combine

/**
 ## 클래스 설명
 * ___VARIABLE_productName___ViewModel
 * <# 요약 #>
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author: ___FULLUSERNAME___
 * Since: ___DATE___
 */
class ___FILEBASENAMEASIDENTIFIER___: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    var model: ___VARIABLE_productName:identifier___Model? {
        didSet {
            initialized(model: model)
        }
    }
    
    private func initialized(model: ___VARIABLE_productName:identifier___Model?) {
        //Do something...
    }
}

