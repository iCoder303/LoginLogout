//
//  ViewController.swift
//  LoginLogout
//
//  Created by Владимир Усов on 05.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passWordTF: UITextField!
    
    //MARK: - Private properties
    private let userName = "Admin"
    private let passWord = "pass"
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else {return}
        welcomeVC.textGreeting = userName
    }
    
    //MARK: - IB Actions
    @IBAction func touchLoginButton() {
        guard let user = userNameTF.text else {return}
        guard let pass = passWordTF.text else {return}
        
        if user == userName && pass == passWord {
            performSegue(withIdentifier: "loginVCSegue", sender: nil)
        } else {
            showAlert(title: "Access denied", message: "Wrong user name or password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passWordTF.text = ""
    }
    
    @IBAction func getUserName() {
        showAlert(title: "Enter user name:", message: userName)
    }
    
    @IBAction func getPassword() {
        showAlert(title: "Enter password:", message: passWord)
    }
    
    //MARK: - Private Methods
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let buttonOK = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(buttonOK)
        present(alert, animated: true)
    }
}

