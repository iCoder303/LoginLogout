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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func touchLoginButton() {
        guard let user = userNameTF.text else {return}
        welcomeTF.text = "Welcome, " + user
    }
    
    
    @IBAction func showAlertUserName(_ sender: UIButton) {
        let alertController = UIAlertController(
            title: "input user name:",
            message: "admin",
            preferredStyle: .alert
        )
        let alertOKAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(alertOKAction)
        
        present(alertController, animated: true)
    }
    
}

