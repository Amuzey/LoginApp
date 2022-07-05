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
    
    var nameOfAvatarImage = ""
    var name = ""
    var surname = ""
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: nameOfAvatarImage)
        avatarImageView.image = image
        avatarImageView.layer.cornerRadius = 75
        nameLabel.text = "\(name) \(surname)"
        
        
    }
    
}
