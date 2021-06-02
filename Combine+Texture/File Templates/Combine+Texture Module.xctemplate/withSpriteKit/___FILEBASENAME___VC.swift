//___FILEHEADER___

import AsyncDisplayKit
import SpriteKit
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
    private weak var skView: SKView!
    override init() {
        viewModel = ___VARIABLE_productName___ViewModel()
        let node = ___VARIABLE_productName___Node()
        skView = node.skView
        super.init(node: node)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initialized()
        binded()
    }
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
    func initialized() {
        //Do initalize.
        guard skView != nil else {
            fatalError("Failure skView.")
        }
        skView.allowsTransparency = true
        skView.presentScene(scene)
    }
    func binded() {
        //Do bind.
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
//MARK: Class method
/**
extension ___FILEBASENAMEASIDENTIFIER___ {
    static func instance() -> ___FILEBASENAMEASIDENTIFIER___ {
        return ___FILEBASENAMEASIDENTIFIER___()
    }
}
*/
