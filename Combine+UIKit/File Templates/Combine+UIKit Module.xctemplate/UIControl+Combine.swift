//
//  UIControl+Combine.swift
//  solomonsforest
//
//  Created by Jay Lee on 2021/02/17.
//
//https://medium.com/@utvik/combine-with-uicontrol-dc1c89225866

import UIKit
import Combine

extension UIControl {
    fileprivate class EventControlSubscription<EventSubscriber: Subscriber, Control: UIControl>: Subscription where EventSubscriber.Input == Control, EventSubscriber.Failure == Never {

        let control: Control
        let event: UIControl.Event
        var subscriber: EventSubscriber?
        var currentDemand: Subscribers.Demand = .none

        init(control: Control, event: UIControl.Event, subscriber: EventSubscriber) {
          self.control = control
          self.event = event
          self.subscriber = subscriber

          control.addTarget(self,
                            action: #selector(eventRaised),
                            for: event)
        }

        func request(_ demand: Subscribers.Demand) {
          currentDemand += demand
        }

        func cancel() {
            subscriber = nil
            control.removeTarget(self,
                                 action: #selector(eventRaised),
                                 for: event)
        }

        @objc func eventRaised() {
            if currentDemand > 0 {
              currentDemand += subscriber?.receive(control) ?? .none
              currentDemand -= 1
            }
        }
    }
}

extension UIControl {
    struct EventControlPublisher<Control: UIControl>: Publisher {
    typealias Output = Control
    typealias Failure = Never

    let control: Control
    let controlEvent: UIControl.Event

    func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
      let subscription = EventControlSubscription(control: control, event: controlEvent, subscriber: subscriber)
      subscriber.receive(subscription: subscription)
    }
  }
}

protocol Combinable {}
extension UIControl: Combinable {}

extension Combinable where Self: UIControl {
    func publisher(for event: UIControl.Event) -> UIControl.EventControlPublisher<Self> {
      return UIControl.EventControlPublisher(control: self, controlEvent: event)
    }
}
