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
class ___FILEBASENAMEASIDENTIFIER___: ASDKViewController<___VARIABLE_productName___Node> {
    private let viewModel: ___VARIABLE_productName___ViewModel
    private var subscriptions = Set<AnyCancellable>()
    override init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init(node: ___VARIABLE_productName___Node())
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initialized()
        binded()
    }
    func initialized() {
        //Do initalize.
    }
    func binded() {
        //Do bind.
    }
}
