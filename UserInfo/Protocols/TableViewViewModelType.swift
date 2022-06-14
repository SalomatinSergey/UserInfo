//
//  TableViewModelType.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import Foundation

protocol TableViewViewModelType {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    func viewModelForSelectedRow() -> DetailVewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
}
