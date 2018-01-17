//
//  TimelineTweetTableViewCell.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit
import Kingfisher

class TimelineTweetCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screenNameLabel: UILabel!
    @IBOutlet weak var favouriteButton: UIButton!
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var favourite:Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func set(tweet: TweetsTimelineScene.GetTweetsTimeline.DisplayTweet) {
        
        let pictureURL = URL(string: tweet.user.profileImageURL)
        self.profileImageView.kf.setImage(with: pictureURL)
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.height/2
        self.profileImageView.clipsToBounds = true
        
        self.nameLabel.text = tweet.user.name
        self.screenNameLabel.text = tweet.user.screenName
    
        self.favouriteButton.layer.cornerRadius = self.favouriteButton.layer.frame.height/2
        
        self.tweetTextLabel.text = tweet.text
        self.tweetTextLabel.numberOfLines = 0
        self.tweetTextLabel.sizeToFit()
        
        self.dateLabel.text = tweet.creationDate
        
        if self.favourite {
            self.favouriteButton.imageView?.tintColor = UIColor.red
        }
        else {
            self.favouriteButton.imageView?.tintColor = UIColor.gray
        }
    }
    

}
