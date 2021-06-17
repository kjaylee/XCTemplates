//___FILEHEADER___

import AsyncDisplayKit
import Combine
import IGListKit
import SpriteKit
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
    private weak var skView: SKView!
    override init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        let layout = UICollectionViewFlowLayout()
        let node = ___VARIABLE_productName___Node(collectionViewLayout: layout)
        skView = node.skView
        super.init(node: node)
        initialized()
        binded()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self, workingRangeSize: viewModel.workingRangeSize)
    }()
    lazy var scene: ___VARIABLE_productName___Scene = {
        guard let scene = ___VARIABLE_productName___Scene(fileNamed: "___VARIABLE_productName___") else {
            fatalError()
        }
        scene.size = skView.bounds.size
        scene.scaleMode = .resizeFill
        scene.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        scene.backgroundColor = .clear
        scene.delegate = self
        return scene
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
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func initialized() {
        adapter.setASDKCollectionNode(self.node)
        adapter.dataSource = self
        if let layout = self.node.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionHeadersPinToVisibleBounds = self.viewModel.sectionHeadersPinToVisibleBounds
        }
        self.node.view.addSubview(refreshControl)
        guard skView != nil else {
            fatalError("Failure skView.")
        }
        skView.allowsTransparency = true
        skView.presentScene(scene)
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
//MARK: SKSceneDelegate
extension ___FILEBASENAMEASIDENTIFIER___: SKSceneDelegate {
    func update(_ currentTime: TimeInterval, for scene: SKScene) { }
    func didEvaluateActions(for scene: SKScene) { }
    func didSimulatePhysics(for scene: SKScene) { }
    func didApplyConstraints(for scene: SKScene) { }
    func didFinishUpdate(for scene: SKScene) { }
}
