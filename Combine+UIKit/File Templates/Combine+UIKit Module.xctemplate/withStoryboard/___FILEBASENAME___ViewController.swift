//___FILEHEADER___

import UIKit
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
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    private let viewModel: ___VARIABLE_productName___ViewModel
    private var cancellables = Set<AnyCancellable>()
    init(nibName: String?) {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init(nibName: nibName, bundle: nil)
    }
    required init?(coder: NSCoder) {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init(coder: coder)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initialized()
        binded()
    }
    func initialized() {
        //Do initialize.
    }
    func binded() {
        //Do bind.
    }
}
//MARK: Class method
extension ___FILEBASENAMEASIDENTIFIER___ {
    static func instance() -> ___FILEBASENAMEASIDENTIFIER___ {
        guard let vc = UIStoryboard(name: "___VARIABLE_productName___", bundle: nil).instantiateViewController(identifier: "___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ else {
            fatalError("Not found ___VARIABLE_productName___ in storyboard.")
        }
        return vc
    }
}
