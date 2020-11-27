//___FILEHEADER___

import UIKit
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
class ___FILEBASENAMEASIDENTIFIER___: UIViewController {
    @IBOutlet weak var skView: SKView!
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
    override func viewDidLoad() {
        super.viewDidLoad()
        guard skView != nil else {
            fatalError("Storyboard link error.")
        }
        skView.allowsTransparency = true
        skView.presentScene(scene)
    }
}
extension ___FILEBASENAMEASIDENTIFIER___: SKSceneDelegate {
    func update(_ currentTime: TimeInterval, for scene: SKScene) {

    }
    func didEvaluateActions(for scene: SKScene){

    }
    func didSimulatePhysics(for scene: SKScene){

    }
    func didApplyConstraints(for scene: SKScene){

    }
    func didFinishUpdate(for scene: SKScene){

    }
}
