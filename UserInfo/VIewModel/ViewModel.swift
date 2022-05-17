//
//  ViewModel.swift
//  UserInfo
//
//  Created by Sergey on 16.05.2022.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [Profile(name: "Ivan", secondName: "Boris", age: 66),
                    Profile(name: "Andrey", secondName: "Gorlov", age: 40),
                    Profile(name: "Roman", secondName: "Naumov", age: 34)]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailVewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }

        return DetailVewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
