//
//  UserProfileCell.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit

class UserProfileCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var screenName: UILabel!
    @IBOutlet weak var userDescription: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var following: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func set(user: UserProfileScene.DisplayUser) {
        let pictureURL = URL(string: user.profileImageURL)
        self.userImageView.kf.setImage(with: pictureURL)
        self.userImageView.layer.cornerRadius = 12
        self.userImageView.clipsToBounds = true
        
        self.name.text = user.name
        self.screenName.text = user.screenName
        self.userDescription.text = user.description
        self.location.text = user.location
        
        self.following.text = "\(user.following) Following"
        self.followers.text = "\(user.followers) Followers"
    }
}
