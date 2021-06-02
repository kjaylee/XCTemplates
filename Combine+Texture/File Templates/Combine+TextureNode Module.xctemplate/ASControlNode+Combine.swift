//
//  ASControlNode+Combine.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/05/25.
//
//https://medium.com/@utvik/combine-with-uicontrol-dc1c89225866

import AsyncDisplayKit
import Combine

//MARK: - Subscription
extension ASControlNode {
    fileprivate class EventControlSubscription<EventSubscriber: Subscriber, Control: ASControlNode>: Subscription where EventSubscriber.Input == Control, EventSubscriber.Failure == Never {
        let control: Control
        let event: ASControlNodeEvent
        var subscriber: EventSubscriber?
        var currentDemand: Subscribers.Demand = .none
        init(control: Control, event: ASControlNodeEvent, subscriber: EventSubscriber) {
            self.control = control
            self.event = event
            self.subscriber = subscriber
            control.addTarget(self,
                              action: #selector(eventRaised),
                              forControlEvents: event)
        }
        func request(_ demand: Subscribers.Demand) {
            currentDemand += demand
        }
        func cancel() {
            subscriber = nil
            control.removeTarget(self,
                                 action: #selector(eventRaised),
                                 forControlEvents: event)
        }
        @objc func eventRaised() {
            if currentDemand > 0 {
                currentDemand += subscriber?.receive(control) ?? .none
                currentDemand -= 1
            }
        }
    }
}
//MARK: - Publisher
extension ASControlNode {
    struct EventControlPublisher<Control: ASControlNode>: Publisher {
        typealias Output = Control
        typealias Failure = Never
        let control: Control
        let controlEvent: ASControlNodeEvent
        func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
            let subscription = EventControlSubscription(control: control, event: controlEvent, subscriber: subscriber)
            subscriber.receive(subscription: subscription)
        }
    }
}
//MARK: - Combinable
extension ASControlNode: Combinable {}
extension Combinable where Self: ASControlNode {
    func publisher(for event: ASControlNodeEvent) -> ASControlNode.EventControlPublisher<Self> {
        return ASControlNode.EventControlPublisher(control: self, controlEvent: event)
    }
}
