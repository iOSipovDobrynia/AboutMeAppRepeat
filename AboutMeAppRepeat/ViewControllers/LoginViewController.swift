//
//  ViewController.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 01.08.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private prop
    private let user = User.getUser()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTF.text = user.login
        passwordTF.text = user.password
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else {
            return
        }
        
        guard let viewControllers = tabBarVC.viewControllers else {
            return
        }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.greetPerson = user.person
            } else if let navigationVC = viewController as? UINavigationController {
                guard let personInfoVC = navigationVC.topViewController as? PersonInfoViewController else {
                    return
                }
                personInfoVC.person = user.person
            }
        }
    }
    
    
    //MARK: -IBActions
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        guard loginTF.text == user.login && passwordTF.text == user.password else {
            showAlert(
                withTitle: "Auth Error",
                andMessage: "Check you login and password"
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "Here is your login", andMessage: user.login)
        : showAlert(withTitle: "Here is your password", andMessage: user.password)
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
