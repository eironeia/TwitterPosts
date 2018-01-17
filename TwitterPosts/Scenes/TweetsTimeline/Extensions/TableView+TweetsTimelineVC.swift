//
//  TableView+TweetsTimelineVC.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit

extension TweetsTimelineViewController: UITableViewDelegate, UITableViewDataSource {
    
    func configureTableViewOnLoad() {
        self.tweetsTimelineTableView.register(UINib(nibName: "TimelineTweet", bundle: Bundle.main), forCellReuseIdentifier: cellIdentifiers.timelineTweet)
        self.tweetsTimelineTableView.rowHeight = UITableViewAutomaticDimension
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.displayTweetsTimeline.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.showUserProfile(index: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let displayedTweet = self.displayTweetsTimeline[indexPath.row]
        
        if let timelineTweetCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifiers.timelineTweet) as? TimelineTweetCell {
            timelineTweetCell.set(tweet: displayedTweet)
            return timelineTweetCell
        }
        
        return UITableViewCell()
    }
}
