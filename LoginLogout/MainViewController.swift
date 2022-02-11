//
//  ViewController.swift
//  LoginLogout
//
//  Created by Владимир Усов on 05.02.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var welcomeTF: UILabel!
    
    private let userName = "Admin"
    private let passWord = "mypass"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTF.isSecureTextEntry = true
    }

    @IBAction func touchLoginButton() {
        guard let user = userNameTF.text else {return}
        guard let pass = passwordTF.text else {return}
        
        if user == userName && pass == passWord {
            welcomeTF.text = "Welcome, " + user + "!"
        } else {
            showAlert(title: "Access denied", message: "Wrong user name or password")
        }
    }
    
    @IBAction func getUserName() {
        showAlert(title: "Enter user name:", message: userName)
    }
    
    @IBAction func getPassword() {
       showAlert(title: "Enter password:", message: passWord)
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(buttonOK)
        
        present(alert, animated: true)
    }
}

