//
//  ViewController.swift
//  MVC - User Login Page
//
//  Created by Mertcan Ünek on 24.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: -VARIABLES
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    //MARK: -FUNCTIONS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setInitViews()
    }
    
    private func setInitViews(){
        usernameField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
    }
    
    @objc private func validateFields(){
        loginButton.isEnabled = usernameField.text != "" && passwordField.text != ""
    }

    @IBAction func loginButtonClicked(_ sender: UIButton) {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

