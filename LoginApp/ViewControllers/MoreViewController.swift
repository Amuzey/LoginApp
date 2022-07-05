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
    
    var learningLanguage = ""
    var nameOfLanguageImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        learningLanguageLabel.text = learningLanguage
        
        let languageImage = UIImage(named: nameOfLanguageImage)
        learningLanguageImageView.image = languageImage
        learningLanguageImageView.layer.cornerRadius = 30
        
    }

}
