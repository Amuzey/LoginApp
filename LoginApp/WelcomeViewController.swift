//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Алексей on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func logOutButtontapped() {
        dismiss(animated: true)
    }
    
}
