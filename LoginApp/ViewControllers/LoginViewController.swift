//
//  ViewController.swift
//  LoginApp
//
//  Created by Алексей on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    //    MARK: - IB Outlet
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let name = "Aleksey"
    private let password = "qwerty"
//    private let userModel = 
    
    //    MARK: - Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? TabBarViewController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.greeting = name
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //   MARK: - IB Action
    @IBAction func logInButtonTapped() {
        guard userNameTF.text == name, passwordTF.text == password else {
            showAlert(
                with: "Invalid login and password",
                and: "Please, enter correct login or password "
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert(with: "Oops!", and: "You name is \(name)🤪")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert(with: "Oops!", and: "You password is \(password)🥳")
    }
    
    @IBAction func unwind(for unwind: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

//MARK: - UI Alert Controller
extension LoginViewController {
    private func showAlert (with title: String, and massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { alertAction in
            self.passwordTF.text = ""
        }
        alert.addAction(alertAction)
        present(alert, animated: true)
    }
}

