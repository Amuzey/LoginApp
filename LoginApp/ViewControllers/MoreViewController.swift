//
//  MoreViewController.swift
//  LoginApp
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class MoreViewController: UIViewController {
    
    @IBOutlet weak var learningLanguageLabel: UILabel!
    @IBOutlet weak var learningLanguageImageView: UIImageView!
    
    var kindOfActivity = true
    var nameOfLanguageImage = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let languageImage = UIImage(named: nameOfLanguageImage)
        learningLanguageImageView.image = languageImage
        learningLanguageLabel.layer.cornerRadius = 15
        
    }
}
