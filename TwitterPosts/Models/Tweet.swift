//
//  Tweet.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation

class Tweet {
    var id: String
    var creationDate: String
    var text: String
    var user: User
    var favourite:Bool
    
    init(id: String, creationDate: String, text: String, user: User, favourite: Bool) {
        self.id = id
        self.creationDate = creationDate
        self.text = text
        self.user = user
        self.favourite = favourite
    }
}
