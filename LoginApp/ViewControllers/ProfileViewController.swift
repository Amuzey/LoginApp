//
//  ProfileViewController.swift
//  LoginApp
//
//  Created by Алексей on 05.07.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var avatar = ""
    var name = ""
    var surname = ""
    var kindOfActivity = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "\(name) \(surname)"
        
        
    }
    
}
