//
//  DetailVewModel.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import Foundation

class DetailVewModel: DetailVewModelType {
    
    private var profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
    }
    
    var description: String {
        return "\(profile.name) \(profile.secondName) is \(profile.age) old"
    }
    
}
