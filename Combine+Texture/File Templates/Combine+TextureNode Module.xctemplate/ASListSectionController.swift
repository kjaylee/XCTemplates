//
//  ASListSectionController.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/05/20.
//

import IGListKit
import AsyncDisplayKit

typealias ASListSectionable = ListSectionable & ASSectionController
protocol ListSectionable where Self: ListSectionController {
    associatedtype Element
    var object: Element? {get set}
}
//MARK: - ASListSectionController
class ASListSectionController<T>: ListSectionController, ASListSectionable {
    var object: T?
    override func didUpdate(to object: Any) {
        self.object = object as? Element
    }
    override func sizeForItem(at index: Int) -> CGSize {
        let size = ASIGListSectionControllerMethods.sizeForItem(at: index)
        return size
    }
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = ASIGListSectionControllerMethods.cellForItem(at: index, sectionController: self)
        return cell
    }
    // MARK: - ASSectionController
    func nodeBlockForItem(at index: Int) -> ASCellNodeBlock {
        return { [unowned self] in
            self.nodeForItem(at: index)
        }
    }
    func nodeForItem(at index: Int) -> ASCellNode {
        fatalError(" Must implements this Method ")
    }
}
//MARK: - ASSupplementaryListSectionController
typealias ASSupplymentaryListSectionable = ListSupplementaryViewSource & ASSupplementaryNodeSource
class ASSupplementaryListSectionController<T>: ASListSectionController<T>, ASSupplymentaryListSectionable {
    var supportedElements: [String] = []
    override init() {
        super.init()
        self.supplementaryViewSource = self
    }
    func supportedElementKinds() -> [String] {
        return self.supportedElements
    }
    func viewForSupplementaryElement(ofKind elementKind: String, at index: Int) -> UICollectionReusableView {
        return ASIGListSupplementaryViewSourceMethods.viewForSupplementaryElement(ofKind: elementKind, at: index, sectionController: self)
    }
    func sizeForSupplementaryView(ofKind elementKind: String, at index: Int) -> CGSize {
        return ASIGListSupplementaryViewSourceMethods.sizeForSupplementaryView(ofKind: elementKind, at: index)
    }
    // MARK: - ASSupplementaryNodeSource
    func nodeBlockForSupplementaryElement(ofKind elementKind: String, at index: Int) -> ASCellNodeBlock {
        return { [unowned self] in
            self.nodeForSupplementaryElement(ofKind: elementKind, at: index)
        }
    }
    func sizeRangeForSupplementaryElement(ofKind elementKind: String, at index: Int) -> ASSizeRange {
        switch elementKind {
        case UICollectionView.elementKindSectionHeader:
            return ASSizeRangeUnconstrained
        case UICollectionView.elementKindSectionFooter:
            return ASSizeRangeUnconstrained
        default:
            return ASSizeRangeZero
        }
    }
    func nodeForSupplementaryElement(ofKind kind: String, at index: Int) -> ASCellNode {
        fatalError(" Must implements this Method ")
    }
}
