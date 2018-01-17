//
//  TweetsFakeData.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation
import SwiftyJSON

//static let feedTweets:Dictionary<String,AnyObject> = [:]

struct FakeData {
    static let tweetsTimeline:[Dictionary<String,Any>] = [
        [
            "created_at": "Thu Apr 06 15:28:43 +0000 2017",
            "id_str": "1",
            "text": "Today we would like to congratulate Alex for the job done.",
            "user": [
                "id_str": "1",
                "name": "Steve Jobs",
                "screen_name": "stevejobs",
                "location": "San Francisco, CA",
                "description": "Steve Job founder of Apple Company",
                "profile_image_url": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Steve_Jobs_Headshot_2010-CROP2.jpg/1200px-Steve_Jobs_Headshot_2010-CROP2.jpg",
                "profile_background_image_url": "https://vignette.wikia.nocookie.net/703-org-network/images/0/06/Black_background_metal-wallpaper-2560x1600.jpg/revision/latest/scale-to-width-down/640?cb=20160102175135",
                "followers_count": 6172353,
                "friends_count": 46,
            ]
        ],
        [
            "created_at": "Mon Jan 16 15:28:43 +0000 2017",
            "id_str": "2",
            "text": "The future is in our hands and Alex is working on them really well",
            "user": [
                "id_str": "2",
                "name": "Twitter API",
                "screen_name": "twitterapi",
                "location": "Barcelona, Spain",
                "description": "Elon Musk founder of Paypal and so many other things",
                "profile_image_url": "https://upload.wikimedia.org/wikipedia/commons/4/49/Elon_Musk_2015.jpg",
                "profile_background_image_url": "https://vignette.wikia.nocookie.net/703-org-network/images/0/06/Black_background_metal-wallpaper-2560x1600.jpg/revision/latest/scale-to-width-down/640?cb=20160102175135",
                "followers_count": 6172353,
                "friends_count": 46,
            ]
        ]
    ]

}

