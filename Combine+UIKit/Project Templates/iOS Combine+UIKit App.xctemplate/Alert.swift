//
//  Alert.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/02/17.
//

import UIKit
import Combine
#if canImport(SwiftEntryKit)
import SwiftEntryKit

/**
 ## 클래스 설명
 * Alert
 * 알럿 정의
 {
     let alert = Alert.shared.alert(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
     Alert.shared.show(alert: alert)
 }
 
 ## 기본정보
 * Note: APP
 * See: <# 제플린 없음 #>
 * Author: Jay Lee
 */
class Alert {
    enum PositionType {
        case center
        case bottom
    }
    static let shared = Alert()
    lazy var nomalAttributes: EKAttributes = {
        var attributes: EKAttributes = .float
        attributes.statusBar = .hidden
        attributes.windowLevel = .normal
        attributes.position = .center
        attributes.displayDuration = .infinity
        attributes.entranceAnimation = .init(
            translate: .init(
                duration: 0.65,
                anchorPosition: .bottom,
                spring: .init(damping: 1, initialVelocity: 0)
            )
        )
        attributes.exitAnimation = .init(
            translate: .init(
                duration: 0.4,
                anchorPosition: .bottom,
                spring: .init(damping: 1, initialVelocity: 0)
            )
        )
        attributes.popBehavior = .animated(
            animation: .init(
                translate: .init(
                    duration: 0.4,
                    spring: .init(damping: 1, initialVelocity: 0)
                )
            )
        )
        attributes.entryInteraction = .absorbTouches
        attributes.screenInteraction = .dismiss
        attributes.entryBackground = .color(color: .clear)
        attributes.screenBackground = .color(color: .dimmedDarkBackground)
//        attributes.border = .value(
//            color: UIColor(white: 0.6, alpha: 1),
//            width: 1
//        )
        attributes.shadow = .active(
            with: .init(
                color: .black,
                opacity: 0.3,
                radius: 3
            )
        )
        attributes.scroll = .enabled(
            swipeable: true,
            pullbackAnimation: .jolt
        )
        attributes.positionConstraints.keyboardRelation = .bind(
            offset: .init(
                bottom: 15,
                screenEdgeResistance: 0
            )
        )
        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows[0]
            let topPadding = window.safeAreaInsets.top
            let bottomPadding = window.safeAreaInsets.bottom
            attributes.positionConstraints.maxSize = .init(
                width: .constant(value: UIScreen.main.minEdge),
                height: .constant(value: UIScreen.main.maxEdge - topPadding - bottomPadding)
            )
        } else {
            attributes.positionConstraints.maxSize = .init(
                width: .constant(value: UIScreen.main.minEdge),
                height: .fill
            )
        }
        return attributes
    }()
    lazy var bottomAttributes: EKAttributes = {
        var attributes: EKAttributes = .bottomToast
        attributes.statusBar = .hidden
        attributes.windowLevel = .normal
        attributes.displayDuration = .infinity
        attributes.entranceAnimation = .init(
            translate: .init(
                duration: 0.65,
                anchorPosition: .bottom,
                spring: .init(damping: 1, initialVelocity: 0)
            )
        )
        attributes.exitAnimation = .init(
            translate: .init(
                duration: 0.4,
                anchorPosition: .bottom,
                spring: .init(damping: 1, initialVelocity: 0)
            )
        )
        attributes.popBehavior = .animated(
            animation: .init(
                translate: .init(
                    duration: 0.4,
                    spring: .init(damping: 1, initialVelocity: 0)
                )
            )
        )
        attributes.entryInteraction = .absorbTouches
        attributes.screenInteraction = .dismiss
        attributes.entryBackground = .color(color: .clear)
        attributes.screenBackground = .color(color: .dimmedDarkBackground)
        attributes.shadow = .active(
            with: .init(
                color: .black,
                opacity: 0.3,
                radius: 3
            )
        )
        attributes.scroll = .enabled(
            swipeable: true,
            pullbackAnimation: .jolt
        )
        attributes.positionConstraints.keyboardRelation = .bind(
            offset: .init(
                bottom: 15,
                screenEdgeResistance: 0
            )
        )
        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows[0]
            let topPadding = window.safeAreaInsets.top
            let bottomPadding = window.safeAreaInsets.bottom
            attributes.positionConstraints.maxSize = .init(
                width: .constant(value: UIScreen.main.minEdge),
                height: .constant(value: UIScreen.main.maxEdge - topPadding - bottomPadding)
            )
        } else {
            attributes.positionConstraints.maxSize = .init(
                width: .constant(value: UIScreen.main.minEdge),
                height: .fill
            )
        }
        return attributes
    }()
    private init() { }
}
//MARK: -
extension Alert {
    func showExample() {
        let customView = NibExampleView()
        SwiftEntryKit.display(entry: customView, using: self.nomalAttributes)
    }
    func alert(title: String?,
               text: String? = nil) -> UIView {
        let customView = UIView()
        customView.title = title
        customView.text = text
        customView.closeAction = {
            SwiftEntryKit.dismiss()
        }
        return customView
    }
    func show(alert: UIView, type: PositionType) {
        var attributes = self.nomalAttributes
        switch type {
        case .center:
            break
        case .bottom:
            attributes = self.bottomAttributes
        }
        SwiftEntryKit.display(entry: alert, using: attributes)
    }
}
#endif
