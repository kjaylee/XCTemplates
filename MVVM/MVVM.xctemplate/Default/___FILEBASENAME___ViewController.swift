//___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa
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
    let viewModel: ___VARIABLE_productName___ViewModel
    let disposeBag = DisposeBag()

    init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
//MARK: Class method
/**
extension ___FILEBASENAMEASIDENTIFIER___ {
    static func instance() -> ___FILEBASENAMEASIDENTIFIER___ {
        if #available(iOS 13.0, *) {
            guard let vc = UIStoryboard(name: "___VARIABLE_productName___", bundle: nil).instantiateViewController(identifier: "___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ else {
                fatalError("Not found ___VARIABLE_productName___ in storyboard.")
            }
            return vc
        } else {
            guard let vc = UIStoryboard(name: "___VARIABLE_productName___", bundle: nil).instantiateViewController(withIdentifier: "___FILEBASENAMEASIDENTIFIER___") as? ___FILEBASENAMEASIDENTIFIER___ else {
                fatalError("Not found ___VARIABLE_productName___ in storyboard.")
            }
            return vc
        }
    }
}
*/
