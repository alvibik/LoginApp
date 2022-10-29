//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by albik on 28.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    var username = ""
    
    @IBOutlet var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(username)!"
    }
    
    @IBAction func logOut() {
        dismiss(animated: true)
    }
}

