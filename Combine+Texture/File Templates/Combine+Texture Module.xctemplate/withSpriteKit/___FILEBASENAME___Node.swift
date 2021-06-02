//___FILEHEADER___

import AsyncDisplayKit
import SpriteKit
import Combine
/**
 ## 클래스 설명
 * ___VARIABLE_productName___Node
 * <# 요약 #>

 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  ___FULLUSERNAME___
 * Since: ___DATE___
 */
class ___VARIABLE_productName___Node: ASDisplayNode {
    lazy var skView: SKView = {
        let skView = SKView()
        return skView
    }()
    private lazy var skNode: ASDisplayNode = {
        ASDisplayNode { () -> UIView in
            self.skView
        }
    }()
    override init() {
        //Background Thread
        super.init()
        automaticallyManagesSubnodes = true
    }
    override func didLoad() {
        //Main Thread
        super.didLoad()
    }
    override func layoutSpecThatFits(_ constraintedSize: ASSizeRange) -> ASLayoutSpec {
        //Background Thread
        return layoutSpec()
    }
    override func layout() {
        //Main Thread
        super.layout()
    }
}
extension ___VARIABLE_productName___Node {
    func layoutSpec() -> ASLayoutSpec {
        ASInsetLayoutSpec(insets: .zero, child: skNode)
    }
}
