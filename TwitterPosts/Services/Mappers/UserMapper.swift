//
//  UserMapper.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation
import SwiftyJSON

extension User: ResponseObjectSerializable {
    
    /*
     var id: String
     var name: String
     var screenName: String
     var description: String
     var profileImageURL: String
     var profileBackgroundImageURL: String
     var location: String
     var followers: Int64
     var following: Int64
     */
    struct ParsingKeysUser {
        static let id = "id_str"
        static let name = "name"
        static let screenName = "screen_name"
        static let description = "description"
        static let profileImageURL = "profile_image_url"
        static let profileBackgroundImageURL = "profile_background_image_url"
        static let location = "location"
        static let followers = "followers_count"
        static let following = "friends_count"
        
    }
    
    static func object(fromJSON json: JSON) -> AnyObject? {
        guard let id = json[ParsingKeysUser.id].string
            , let name = json[ParsingKeysUser.name].string
            , let screenName = json[ParsingKeysUser.screenName].string
            , let description = json[ParsingKeysUser.description].string
            , let profileImageURL = json[ParsingKeysUser.profileImageURL].string
            , let profileBackgroundImageURL = json[ParsingKeysUser.profileBackgroundImageURL].string
            , let location = json[ParsingKeysUser.location].string
            , let followers = json[ParsingKeysUser.followers].int64
            , let following = json[ParsingKeysUser.following].int64
            else {
                print("ERROR: Some parameter of tweet is wrong")
                return nil
        }
        
        return User(id: id, name: name, screenName: screenName, description: description, profileImageURL: profileImageURL, profileBackgroundImageURL: profileBackgroundImageURL, location: location, followers: followers, following: following)
    }
    
}

