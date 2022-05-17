//
//  Box.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import Foundation

class Box<T> {
    
    typealias Observer = (T) -> ()
    
    var observer: Observer?
    
    
    var value: T {
        didSet {
            observer?(value)
        }
    }
    
    func bind(observer: @escaping Observer) {
        self.observer = observer
        observer(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
