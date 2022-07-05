//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Алексей on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
  
    
    var name = ""
    var surname = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        
        greetingLabel.text = "Добрый день, \(name) \(surname)!"
    }
}

