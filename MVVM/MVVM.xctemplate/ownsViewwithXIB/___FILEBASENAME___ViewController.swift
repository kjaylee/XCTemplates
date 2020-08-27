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
    init() {
        viewModel = ___VARIABLE_productName___ViewModel(withModel: ___VARIABLE_productName___Model())
        let bundle = Bundle(for: ___VARIABLE_productName___View.self)
        let nibName = "___VARIABLE_productName___View"
        guard let aView = UINib(nibName: nibName, bundle: bundle).instantiate(withOwner: nil, options: nil).last as? ___VARIABLE_productName___View else {
            fatalError("Nib load error.")
        }
        mainView = aView
        super.init(nibName: nil, bundle: nil)
        mainView.configure(withViewModel: viewModel)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
