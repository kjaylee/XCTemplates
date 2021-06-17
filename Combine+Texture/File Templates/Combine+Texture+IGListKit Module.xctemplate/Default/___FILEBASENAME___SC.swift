//___FILEHEADER___

import IGListKit
import AsyncDisplayKit

final class ___FILEBASENAMEASIDENTIFIER___: ASListSectionController<___VARIABLE_productName___SectionModel>, ListSectionBattlable {
    override init() {
        super.init()
        self.inset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    override func didSelectItem(at index: Int) {
        //Do something...
    }
    override func nodeForItem(at index: Int) -> ASCellNode {
        return ___VARIABLE_productName___CellNode()
    }
}

