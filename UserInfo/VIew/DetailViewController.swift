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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind { [weak self] in
            guard let string = $0 else { return }
            
            self?.textLabel.text = string
        }
        
//        delay(5) { [unowned self] in 
//            self.viewModel?.age.value = "999"
//        }
    }
    
    fileprivate func delay(_ delay: Int, cosure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(delay)) {
            cosure()
        }
    }

}
