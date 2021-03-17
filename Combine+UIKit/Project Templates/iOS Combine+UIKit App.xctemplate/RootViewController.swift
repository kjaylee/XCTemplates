//___FILEHEADER___

import UIKit
import Combine

/**
 ## 클래스 설명
 * ___FILEBASENAMEASIDENTIFIER___
 * <# 요약 #>
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  ___FULLUSERNAME___
 * Since: ___DATE___ 
 */
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    private let viewModel: RootViewModel
    private var subscriptions = Set<AnyCancellable>()
    init(nibName: String?) {
        viewModel = RootViewModel()
        super.init(nibName: nibName, bundle: nil)
    }
    required init?(coder: NSCoder) {
        viewModel = RootViewModel()
        super.init(coder: coder)
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
//MARK: Class method
/**
extension ___FILEBASENAMEASIDENTIFIER___ {
    static func instance() -> ___FILEBASENAMEASIDENTIFIER___ {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ else {
            fatalError("Failed load ___FILEBASENAMEASIDENTIFIER___ in storyboard.")
        }
        return vc
    }
}
*/
