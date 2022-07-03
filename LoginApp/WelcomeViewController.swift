//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Алексей on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var greeting: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        greetingLabel.text = greeting
    }
}
