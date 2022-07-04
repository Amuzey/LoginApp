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
    
    //    MARK: - Methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.greeting = "Welcome, \(userNameTF.text ?? "")"
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //   MARK: - IB Action
    @IBAction func logInButtonTapped() {
        if userNameTF.text == name, passwordTF.text == password {
            print("Пользователь прошел авторизацию")
        } else {
            showAlert(
                with: "Invalid login and password",
                      and: "Please, enter correct login and password "
            )
        }
    }
    
    @IBAction func forgotNameButtonTapped() {
        showAlert(with: "Oops!", and: "You name is \(name)🤪")
    }
    
    @IBAction func forgotPassButtonTapped() {
        showAlert(with: "Oops!", and: "You password is \(password)🥳")
    }
    
    @IBAction func unwind(for unwind: UIStoryboardSegue) {
        guard let loginVC = unwind.destination as? LoginViewController else { return }
        loginVC.userNameTF.text = ""
        loginVC.passwordTF.text = ""
        dismiss(animated: true)
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

