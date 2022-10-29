//
//  ViewController.swift
//  LoginApp
//
//  Created by albik on 28.10.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let userName = "User"
    private let passWord = "Password"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.username = userName
            } else if let navigationVC = viewController as? UINavigationController {
                
            }
        }
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.username = userName
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.username = userName
//    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func logining(_ sender: UIButton) {
        guard usernameTextField.text == userName, passwordTextField.text == passWord else {
            showAlert(with: "Ooops!", and: "Username or password is Wrong!😡")
            return
        }
        performSegue(withIdentifier: "goToWelcome", sender: nil)
    }
    
    
    @IBAction func getUserName() {
        showAlert(with: "Ooops !", and: "Your username is User 😜")
    }
    
    @IBAction func getPassword() {
        showAlert(with: "Ooops!", and: "Your password is Password 🤪")
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
