//
//  TableViex+UserProfileVC.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright © 2018 Alex Cuello ortiz. All rights reserved.
//

import UIKit


extension UserProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func configureTableViewOnLoad() {
        self.userProfileTableView.register(UINib(nibName: "UserProfileCell", bundle: Bundle.main), forCellReuseIdentifier: cellIdentifiers.userProfileCell)
        self.userProfileTableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.displayUser != nil {
            return 1
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 314
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let userProfileCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifiers.userProfileCell) as? UserProfileCell {
            userProfileCell.set(user: self.displayUser)
            return userProfileCell
        }
        
        return UITableViewCell()
    }
    
}
