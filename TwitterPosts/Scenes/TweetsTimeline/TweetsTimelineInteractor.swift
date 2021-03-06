//
//  TweetsTimelineInteractor.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright (c) 2018 Alex Cuello ortiz. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

protocol TweetsTimelineInteractorInput {
    func getTweetsTimeline(request: TweetsTimelineScene.GetTweetsTimeline.Request)
    func setSelectedUser(request: TweetsTimelineScene.SetSelectedUser.Request)
}

protocol TweetsTimelineInteractorOutput {
    func presentTweets(response: TweetsTimelineScene.GetTweetsTimeline.Response)
}

protocol TweetsTimelineDataSource {
    var selectedUser: User! {get set}
}

protocol TweetsTimelineDataDestination {
    
}

class TweetsTimelineInteractor: TweetsTimelineInteractorInput, TweetsTimelineDataSource, TweetsTimelineDataDestination {
    
    var output: TweetsTimelineInteractorOutput?
    
    let twitterAPIStore = TwitterAPIStore()
    
    var tweets:[Tweet] = []
    
    var selectedUser: User!
    
    // MARK: Business logic
    
    func getTweetsTimeline(request: TweetsTimelineScene.GetTweetsTimeline.Request) {
        self.twitterAPIStore.geTweetsTimeline(page: request.page) { (tweets) in
            self.tweets += tweets
            let response = TweetsTimelineScene.GetTweetsTimeline.Response(tweetsTimeline: tweets)
            self.output?.presentTweets(response: response)
        }
    }
    
    func setSelectedUser(request: TweetsTimelineScene.SetSelectedUser.Request) {
        let tweet = self.tweets[request.index]
        self.selectedUser = tweet.user
    }

}
