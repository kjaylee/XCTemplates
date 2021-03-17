//
//  NibExampleView.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/02/18.
//

import UIKit

#if canImport(SwiftEntryKit)
class NibExampleView: NibView {
    override func setup() {
        fromNib()
        super.setup()
    }
}
#endif
