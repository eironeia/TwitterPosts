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
}

protocol TweetsTimelineInteractorOutput {
    func presentTweets(response: TweetsTimelineScene.GetTweetsTimeline.Response)
}

protocol TweetsTimelineDataSource {
    
}

protocol TweetsTimelineDataDestination {
    
}

class TweetsTimelineInteractor: TweetsTimelineInteractorInput, TweetsTimelineDataSource, TweetsTimelineDataDestination {
    
    var output: TweetsTimelineInteractorOutput?
    
    let twitterAPIStore = TwitterAPIStore()
    
    // MARK: Business logic
    
    func getTweetsTimeline(request: TweetsTimelineScene.GetTweetsTimeline.Request) {
        self.twitterAPIStore.geTweetsTimeline(page: request.page) { (tweets) in
            let response = TweetsTimelineScene.GetTweetsTimeline.Response(tweetsTimeline: tweets)
            self.output?.presentTweets(response: response)
        }
    }

}
