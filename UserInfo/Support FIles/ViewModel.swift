//
//  ViewModel.swift
//  UserInfo
//
//  Created by Sergey on 16.05.2022.
//

import Foundation

class ViewModel {
    
    private var profile = Profile(name: "Ivan", secondName: "Boris", age: 69)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
}
