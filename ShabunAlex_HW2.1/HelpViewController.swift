//
//  helpViewController.swift
//  ShabunAlex_HW2.1
//
//  Created by Alex on 22.11.21.
//  Copyright © 2021 AlexShab. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    
    var name: String?
    var shouldShowButton = true
    
    @IBOutlet weak var promptUILabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func save(_ sender: Any) {
        
        let pasteboard = UIPasteboard.general
        pasteboard.string = promptUILabel.text
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let name = self.name else { return }
        promptUILabel.text = "\(name)"
        
        if shouldShowButton == false {
            button.isHidden = true
        }
    }
}
