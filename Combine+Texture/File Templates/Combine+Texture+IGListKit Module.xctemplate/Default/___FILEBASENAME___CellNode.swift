//
//  CardCollectionCellNode.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/06/01.
//

import AsyncDisplayKit
import Combine
/**
 ## 클래스 설명
 * CardCollectionCellNode
 * <# 요약 #>

 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author:  Jay Lee
 * Since: 2021/06/01
 */
class ___FILEBASENAMEASIDENTIFIER___: ASCellNode {
    private var subscriptions = Set<AnyCancellable>()
    typealias ItemType = Codable
    var item: ItemType?
    {
        didSet {
            initialized()
        }
    }
    override init() {
        //Background Thread
        super.init()
        automaticallyManagesSubnodes = true
        self.selectionStyle = .none
        binded()
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
extension ___FILEBASENAMEASIDENTIFIER___ {
    private func initialized() {
        
    }
    private func binded() {
        
    }
    private func layoutSpec() -> ASLayoutSpec {
        ASLayoutSpec()
    }
}
