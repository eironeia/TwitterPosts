//
//  TweetTimelineMapper.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation
import SwiftyJSON

extension Tweet: ResponseObjectSerializable, ResponseCollectionSerializable {
    
    struct ParsingKeysTweet {
        static let id = "id_str"
        static let creationDate = "created_at"
        static let text = "text"
        static let user = "user"
    }
    
    static func object(fromJSON json: JSON) -> AnyObject? {
        
        let userJSON = json[ParsingKeysTweet.user]
        
        guard let id = json[ParsingKeysTweet.id].string
            , let creationDate = json[ParsingKeysTweet.creationDate].string
            , let text = json[ParsingKeysTweet.text].string
            , let user = User.object(fromJSON: userJSON) as? User
            else {
                print("ERROR: Some parameter of tweet is wrong")
                return nil
        }

        
        let indexStartOfText = creationDate.index(creationDate.startIndex, offsetBy: 10)
        let dateString: String = creationDate.substring(to: indexStartOfText) //PARSE THE DATE FROM THE STRING
        let favourite = false //CHECK IN COREDATA
        return Tweet(id: id, creationDate: dateString, text: text, user: user, favourite: favourite) as AnyObject?
    }
    
    static func collection(fromJSON json: JSON) -> AnyObject? {
        
        var tweets:[Tweet] = []
        
        if let tweetsResultJSON = json.array  {
            for tweetResultJSON in tweetsResultJSON {
                if let tweet = Tweet.object(fromJSON: tweetResultJSON) as? Tweet {
                    tweets.append(tweet)
                }
            }
        }
        print(tweets.count)
        return tweets as AnyObject
    }
    
}
