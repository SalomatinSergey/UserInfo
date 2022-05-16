//
//  ViewController.swift
//  UserInfo
//
//  Created by Sergey on 16.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = "\(profile.age)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile = Profile(name: "Ivan", secondName: "Borisov", age: 10)
    }


}

