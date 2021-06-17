//
//  ListViewModel.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/05/21.
//

import AsyncDisplayKit
import IGListKit
import Combine

protocol ModelRefreshable {
    typealias PullToAction = ((UIRefreshControl) -> Void)
    var pullToTitle: NSAttributedString? {get set}
    var pullToAction: PullToAction? {get set}
}
protocol ModelSectionHeadersPinable {
    var sectionHeadersPinToVisibleBounds: Bool {get set}
}
typealias ModelPinAndRefreshable = ModelRefreshable & ModelSectionHeadersPinable
//MARK: ListViewModel
class ListViewModel: ModelSectionHeadersPinable {
    let workingRangeSize: Int = 10
    typealias PullToAction = ((UIRefreshControl) -> Void)
    var pullToTitle: NSAttributedString?
    var pullToAction: PullToAction?
    var sectionHeadersPinToVisibleBounds = true
    @Published var list: [ListSectionDiffable]
    var listPublisher: AnyPublisher<[ListSectionDiffable], Never> {
        $list.receive(on: DispatchQueue.main).eraseToAnyPublisher()
    }
    private var subscriptions = Set<AnyCancellable>()
    init() {
        self.list = [ListSectionDiffable]()
    }
}
extension ListViewModel {
    func appendPullToAction(pullToAction: PullToAction?, pullToTitle: NSAttributedString? = nil) {
        self.pullToAction = pullToAction
        self.pullToTitle = pullToTitle
    }
    func sectionController(object: ListSectionDiffable) -> ListSectionController {
        return object.sectionController()
    }
}
