//
//  LoginRouter.swift
//  TwitterPosts
//
//  Created by Alex Cuello ortiz on 17/01/2018.
//  Copyright (c) 2018 Alex Cuello ortiz. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates
//  https://github.com/HelmMobile/clean-swift-templates

import UIKit

protocol LoginRouterInput {
    
}

protocol LoginRouterDataSource: class {
    
}

protocol LoginRouterDataDestination: class {
    
}

class LoginRouter: LoginRouterInput {
    
    weak var viewController: LoginViewController!
    weak private var dataSource: LoginRouterDataSource!
    weak var dataDestination: LoginRouterDataDestination!
    
    struct SegueIdentifiers {
        static let tabBarViewControllerSegue = "tabBarViewControllerSegue"
    }
    
    init(viewController: LoginViewController, dataSource: LoginRouterDataSource, dataDestination: LoginRouterDataDestination) {
        self.viewController = viewController
        self.dataSource = dataSource
        self.dataDestination = dataDestination
    }
    
    // MARK: Navigation
    func navigateToTweetsTimelineScene() {
        viewController.performSegue(withIdentifier: SegueIdentifiers.tabBarViewControllerSegue, sender: viewController)
    }
    // MARK: Communication
    
    func passDataToNextScene(for segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        
    }
}