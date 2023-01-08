//
//  AddPasswordViewController.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 8.01.2023.
//

import UIKit

class AddPasswordViewController: UIViewController {
    
    
    @IBOutlet weak var platformNameTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func addPasswordButton(_ sender: Any) {
        print(platformNameTextField ?? "platformNameDontExist")
        print(usernameTextField ?? "usernameDontExist")
        print(passwordTextField ?? "passwordDontExist")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
