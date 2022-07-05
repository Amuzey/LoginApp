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
        
        view.addVerticalGradientLayer(topColor: .systemCyan, bottomColor: .systemPurple)
        greetingLabel.text = "Добрый день, \(name) \(surname)!"
    }
}
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

