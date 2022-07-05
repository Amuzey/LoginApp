//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class BiographyViewController: UIViewController {
    @IBOutlet weak var biographyTextView: UITextView!
    
    var biogragpy = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        biographyTextView.text = biogragpy
    }
}
