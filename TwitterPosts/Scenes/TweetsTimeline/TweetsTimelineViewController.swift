//
//  TweetsTimelineViewController.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright (c) 2018 Alex Cuello ortiz. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol TweetsTimelineViewControllerInput {
    func displayTweetsTimeline(viewModel: TweetsTimelineScene.GetTweetsTimeline.ViewModel)
}

protocol TweetsTimelineViewControllerOutput {
    func getTweetsTimeline(request: TweetsTimelineScene.GetTweetsTimeline.Request)
}

class TweetsTimelineViewController: UIViewController, TweetsTimelineViewControllerInput {
    
    var output: TweetsTimelineViewControllerOutput?
    var router: TweetsTimelineRouter?
    
    struct cellIdentifiers {
        static let timelineTweet = "timelineTweetCell"
    }
    
    @IBOutlet weak var tweetsTimelineTableView: UITableView!
    
    var page:Int = 0
    var displayTweetsTimeline:[TweetsTimelineScene.GetTweetsTimeline.DisplayTweet] = []
    
    
    
    // MARK: Object lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        TweetsTimelineConfigurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableViewOnLoad()
        self.getTweetsTimeline()
    }
    
    // MARK: Requests
    func getTweetsTimeline() {
        page += 1
        let request = TweetsTimelineScene.GetTweetsTimeline.Request(page: page)
        self.output?.getTweetsTimeline(request: request)
    }
    
    // MARK: Display logic
    
    func displayTweetsTimeline(viewModel: TweetsTimelineScene.GetTweetsTimeline.ViewModel) {
        self.displayTweetsTimeline += viewModel.displayTweets
        self.tweetsTimelineTableView.reloadData()
    }
}

//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
extension TweetsTimelineViewController: TweetsTimelinePresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.passDataToNextScene(for: segue)
    }
}
