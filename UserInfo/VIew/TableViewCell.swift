//
//  TableViewCell.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var ageLable: UILabel!
    
    
    weak var viewModel: TableViewCellViewModelType? {
        
        willSet(viewModel) {
            
            guard let viewModel = viewModel else { return }

            fullNameLabel.text = viewModel.fullName
            ageLable.text = viewModel.age
        }
    }

}
