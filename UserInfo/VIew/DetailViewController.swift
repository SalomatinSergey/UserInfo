//
//  DetailViewController.swift
//  UserInfo
//
//  Created by Sergey on 17.05.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailVewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        
        self.textLabel.text = viewModel.description

    }

}
