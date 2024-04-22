//___FILEHEADER___

import UIKit
import SwiftUI
import Combine

/**
 ## 클래스 설명
 * ___VARIABLE_productName___ViewController
 * <# 요약 #>
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  ___FULLUSERNAME___
 * Since: ___DATE___
 */
class ___FILEBASENAMEASIDENTIFIER___: UIHostingController<___VARIABLE_productName:identifier___View> {
    private var cancellables = Set<AnyCancellable>()
    
    override init(rootView: ___VARIABLE_productName:identifier___View) {
        super.init(rootView: rootView)
    }
    
    @MainActor required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: Class method
extension ___FILEBASENAMEASIDENTIFIER___ {
    static func instance(with model: ___VARIABLE_productName:identifier___Model = ___VARIABLE_productName:identifier___Model()) -> ___FILEBASENAMEASIDENTIFIER___ {
        ___FILEBASENAMEASIDENTIFIER___(rootView: ___VARIABLE_productName:identifier___View(model: model))
    }
}
