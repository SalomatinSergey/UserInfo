//
//  TableViewCellViewModel.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        
        self.profile = profile
    }
}
