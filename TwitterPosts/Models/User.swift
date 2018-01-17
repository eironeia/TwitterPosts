//
//  User.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation

class User {
    var id: String
    var name: String
    var screenName: String
    var description: String
    var profileImageURL: String
    var profileBackgroundImageURL: String
    var location: String
    var followers: Int64
    var following: Int64
    
    init(id: String, name: String, screenName: String, description: String, profileImageURL: String, profileBackgroundImageURL: String, location: String, followers: Int64, following: Int64) {
        self.id = id
        self.name = name
        self.screenName = screenName
        self.description = description
        self.profileImageURL = profileImageURL
        self.profileBackgroundImageURL = profileBackgroundImageURL
        self.location = location
        self.followers = followers
        self.following = following
    }
    
    
}
