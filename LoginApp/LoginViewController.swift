//
//  ViewController.swift
//  LoginApp
//
//  Created by albik on 28.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    private let username = "User"
    private let password = "Password"
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func getUserName() {
        showAlert(with: "Ooops !", and: "Your username is User 😜")
    }
    @IBAction func getPassword() {
        showAlert(with: "Ooops!", and: "Your password is Password 🤪")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        if usernameTextField.text != username {
            showAlert(with: "Ooops!", and: "Username or password is Wrong!😡")
        } else if passwordTextField.text != password {
            showAlert(with: "Ooops!", and: "Username or password is Wrong!😡")
        }
        welcomeVC.username = usernameTextField.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}

// MARK: - extension UIAlertController
extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
