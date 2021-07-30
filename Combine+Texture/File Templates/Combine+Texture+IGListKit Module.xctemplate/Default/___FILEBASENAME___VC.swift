//___FILEHEADER___

import AsyncDisplayKit
import Combine
import IGListKit
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
class ___FILEBASENAMEASIDENTIFIER___: ASDKViewController<___VARIABLE_productName___Node>, ListAdapterDataSource  {
    var emptyView: EmptyView?
    private let viewModel: ___VARIABLE_productName___ViewModel
    private var subscriptions = Set<AnyCancellable>()
    override init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        let layout = UICollectionViewFlowLayout()
        let collectionNode = ___VARIABLE_productName___Node(collectionViewLayout: layout)
        collectionNode.backgroundColor = .clear
        collectionNode.alwaysBounceVertical = true
        super.init(node: collectionNode)
        initialized()
        binded()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: viewModel.workingRangeSize)
    }()
    internal lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = .subMenuColor
        refreshControl.attributedTitle = self.viewModel.pullToTitle
        refreshControl.publisher(for: UIControl.Event.valueChanged).sink { [unowned self] (control) in
            //TODO: loadData...
        }.store(in: &self.subscriptions)
        return refreshControl
    }()
    func initialized() {
        adapter.setASDKCollectionNode(self.node)
        adapter.dataSource = self
        if let layout = self.node.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = self.viewModel.sectionHeadersPinToVisibleBounds
        }
        self.node.view.addSubview(refreshControl)
    }
    func binded() {
        //Do bind.
        self.viewModel.listPublisher.dropFirst().sink { [unowned self] (list) in
            self.adapter.performUpdates(animated: true, completion: nil)
        }.store(in: &self.subscriptions)
    }
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return self.viewModel.list
    }
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        guard let object = object as? ListSectionDiffable else {
            fatalError("Error: ListSectionDiffable.")
        }
        return self.viewModel.sectionController(object: object)
    }
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        self.emptyView = EmptyView()
        return self.emptyView
    }
}
