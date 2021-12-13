//
//  SecondViewController.swift
//  ShabunAlex_HW2.1
//
//  Created by Alex on 10/17/21.
//  Copyright © 2021 AlexShab. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var login: String?
    
    @IBOutlet weak var helloUILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        helloUILabel.text = "Hello, \(login)"
    }
}
