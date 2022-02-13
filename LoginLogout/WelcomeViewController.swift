//
//  WelcomeViewController.swift
//  LoginLogout
//
//  Created by Владимир Усов on 12.02.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var messageView: UILabel!
    var textGreeting: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageView.layer.cornerRadius = 10
        messageView.text = "Welcome, \(textGreeting) !"
    }
}
