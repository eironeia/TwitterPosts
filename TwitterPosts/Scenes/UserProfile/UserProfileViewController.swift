//
//  UserProfileViewController.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright (c) 2018 Alex Cuello ortiz. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol UserProfileViewControllerInput {
    func displayUserDetails(viewModel: UserProfileScene.PresentUser.ViewModel)
}

protocol UserProfileViewControllerOutput {
    func getUserDetails(request: UserProfileScene.PresentUser.Request)
}

class UserProfileViewController: UIViewController, UserProfileViewControllerInput {
    
    var output: UserProfileViewControllerOutput?
    var router: UserProfileRouter?
    
    struct cellIdentifiers {
        static let userProfileCell = "userProfileCell"
    }
    
    // MARK: Object lifecycle
    @IBOutlet weak var userProfileTableView: UITableView!
    
    var displayUser:UserProfileScene.DisplayUser!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        UserProfileConfigurator.sharedInstance.configure(viewController: self)
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureTableViewOnLoad()
        self.getUserDetails()
        self.navigationItem.title = "Profile"
    }
    
    // MARK: Requests
    func getUserDetails() {
        let request = UserProfileScene.PresentUser.Request()
        self.output?.getUserDetails(request: request)
    }
    
    // MARK: Display logic
    func displayUserDetails(viewModel: UserProfileScene.PresentUser.ViewModel) {
        self.displayUser = viewModel.displayUser
        print(self.displayUser)
    }
}

//This should be on configurator but for some reason storyboard doesn't detect ViewController's name if placed there
extension UserProfileViewController: UserProfilePresenterOutput {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.passDataToNextScene(for: segue)
    }
}
