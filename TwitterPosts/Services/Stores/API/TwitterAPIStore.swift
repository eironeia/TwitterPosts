//
//  TwitterAPIStore.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class TwitterAPIStore {
    
    // TODO: Make it with not fake data
    func geTweetsTimeline(page: Int, completion: ([Tweet]) -> Void) {
        
        //Check if the Tweet is favourite on the coredata
        var tweets:[Tweet] = []
        for tweetDict in FakeData.tweetsTimeline {
            let tweetsJSON = JSON(tweetDict)
            if let tweet = Tweet.object(fromJSON: tweetsJSON) as? Tweet {
                tweets.append(tweet)
            }
            else {
                print("ERROR: Parsing tweet from tweetsJSON")
            }
        }
        
        // In order to add more fake tweets we will add till get 20 tweets per page
        let tweetsAux = tweets
        for _ in 0..<9 {
            tweets += tweetsAux
        }
        
        completion(tweets)
    }
}
