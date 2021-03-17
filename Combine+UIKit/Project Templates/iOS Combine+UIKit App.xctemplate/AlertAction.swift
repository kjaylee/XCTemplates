//
//  AlertAction.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/02/19.
//

import UIKit
class AlertAction  {
    typealias Action = ((AlertAction) -> Void)
    init(title: String?, style: AlertAction.Style = .default, handler: Action? = nil) {
        self.title = title
        self.style = style
        self.handler = handler
    }
    var title: String?
    var style: AlertAction.Style
    var handler: Action?
}
extension AlertAction {
    public enum Style : Int {
        case `default` = 0
        case box = 1
    }
}
