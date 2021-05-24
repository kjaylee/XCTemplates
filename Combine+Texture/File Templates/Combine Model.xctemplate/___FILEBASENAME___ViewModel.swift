//___FILEHEADER___
/* ___VARIABLE_productName___VC에 추가
 private let viewModel: ___VARIABLE_productName___ViewModel
 private var subscriptions = Set<AnyCancellable>()
 init(nibName: String?) {
     viewModel = ___VARIABLE_productName___ViewModel()
     super.init(nibName: nibName, bundle: nil)
 }
 required init?(coder: NSCoder) {
     viewModel = ___VARIABLE_productName___ViewModel()
     super.init(coder: coder)
 }
 */

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
class ___FILEBASENAMEASIDENTIFIER___ {
    private let model: ___VARIABLE_productName:identifier___Model
    init(withModel model: ___VARIABLE_productName:identifier___Model = ___VARIABLE_productName___Model()) {
        self.model = model
    }
}


