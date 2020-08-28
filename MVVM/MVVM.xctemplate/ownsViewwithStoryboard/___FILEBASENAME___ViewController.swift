//___FILEHEADER___

import UIKit
import RxSwift
import RxCocoa
import SnapKit

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
    let mainView: ___VARIABLE_productName___View
    required init?(coder: NSCoder) {
        viewModel = ___VARIABLE_productName___ViewModel()
        mainView = ___VARIABLE_productName___View()
        super.init(coder: coder)
        mainView.configure(withViewModel: viewModel)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    private func setupView() {
        view.addSubview(mainView)
        mainView.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalToSuperview()
        }
    }
}
