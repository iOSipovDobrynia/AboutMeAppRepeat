//
//  ViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 01.08.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: -IBOutlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: -Private prop
    private let login = "Dobrynia"
    private let password = "Osipov"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginText = loginTF.text, !loginText.isEmpty,
              let passwordText = passwordTF.text, !passwordText.isEmpty else {
            showAlert(withTitle: "Input error", andMessage: "Check text fields")
            return
        }
        if loginTF.text == login && passwordTF.text == password {
            guard let welcomeVC = segue.destination as? WelcomeViewController else {
                return
            }
            welcomeVC.greetPerson = login
        } else {
            showAlert(withTitle: "Auth Error", andMessage: "Check you login and password")
            return
        }
    }
    
    
    //MARK: -IBActions
    @IBAction func forgotYourLoginButtonPressed() {
        showAlert(withTitle: "Here is your login", andMessage: "Dobrynia")
    }
    @IBAction func forgotYourPasswordButtonPressed() {
        showAlert(withTitle: "Here is your password", andMessage: "Osipov")
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
}

//MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
