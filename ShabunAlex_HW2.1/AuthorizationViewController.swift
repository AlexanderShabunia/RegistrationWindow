//
//  ViewController.swift
//  ShabunAlex_HW2.1
//
//  Created by Alex on 10/17/21.
//  Copyright © 2021 AlexShab. All rights reserved.
//

import UIKit

private let validPassword = "123"
private let validLogin = "Swifter"

class AuthorizationViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func loginTapped(_ sender: UIButton) {
       
        if passwordTextField.text == validPassword && loginTextField.text == validLogin {
            performSegue(withIdentifier: "welcomeSegueIdentifier", sender: nil)
        } else {
            performSegue(withIdentifier: "warningSegueIdentifier", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let witchIdentifier = segue.identifier
        switch witchIdentifier {
        case "welcomeSegueIdentifier": guard let welcomeViewController = segue.destination as? WelcomeViewController else { return }
            welcomeViewController.login = loginTextField.text
        case "userNameSegueIdentifier": guard let helpViewController = segue.destination as? HelpViewController else { return }
            helpViewController.name = "\(validLogin)"
        case "passwordSegueIdentifier": guard let helpViewController = segue.destination as? HelpViewController else { return }
            helpViewController.name = "\(validPassword)"
        default:
            guard let helpViewController = segue.destination as? HelpViewController else { return }
            helpViewController.name = "wrong login or password!"
            helpViewController.shouldShowButton = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginTextField.delegate = self
        self.passwordTextField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}


