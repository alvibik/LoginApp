//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by albik on 28.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var username: String!
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(username ?? "ananymous")!"
    }
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }
}

