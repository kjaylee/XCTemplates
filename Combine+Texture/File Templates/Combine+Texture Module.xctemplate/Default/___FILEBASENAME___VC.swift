//___FILEHEADER___

import AsyncDisplayKit
import Combine
/**
 ## 클래스 설명
 * ___VARIABLE_productName___VC
 * <# 요약 #>

 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  ___FULLUSERNAME___
 * Since: ___DATE___
 */
class ___FILEBASENAMEASIDENTIFIER___: ASDKViewController<ASDisplayNode> {
    private let viewModel: ___VARIABLE_productName___ViewModel
    private var subscriptions = Set<AnyCancellable>()
    override init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init()
        initialized()
        binded()
    }
    required init?(coder: NSCoder) {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init(coder: coder)
        initialized()
        binded()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func initialized() {
        //Do initalize.
    }
    func binded() {
        //Do bind.
    }
}
