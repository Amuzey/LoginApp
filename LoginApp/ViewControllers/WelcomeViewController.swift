//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Алексей on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var viewBackground: UIView!
    
    var greeting = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layer = CAGradientLayer()
        layer.frame = viewBackground.bounds
        layer.colors = [UIColor.systemPink.cgColor, UIColor.systemCyan.cgColor]
        viewBackground.layer.addSublayer(layer)
        
        greetingLabel.text = "Welcome, \(greeting)!"
    }
}
