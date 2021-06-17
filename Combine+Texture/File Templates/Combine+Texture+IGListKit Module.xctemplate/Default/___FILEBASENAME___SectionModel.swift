//
//  CardItemModel.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/06/01.
//

import Foundation
import IGListKit

class ___FILEBASENAMEASIDENTIFIER___: Selectable {
    let listSectionController: ListSectionController
    var selectedAction: ((Codable) -> ())?
    init(sectionController: ListSectionController) {
        self.listSectionController = sectionController
    }
}
extension ___FILEBASENAMEASIDENTIFIER___: ListSectionDiffable {
    func diffIdentifier() -> NSObjectProtocol {
        //return id as NSObjectProtocol
        fatalError("diffIdentifier() has not been implemented")
    }
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return self.diffIdentifier().isEqual(object?.diffIdentifier())
    }
    func sectionController() -> ListSectionController {
        return listSectionController
    }
}
