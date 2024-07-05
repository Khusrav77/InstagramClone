//
//  MainTabController.swift
//  InstagramClone
//
//  Created by Khusrav Safiev on 7/5/24.
//

import UIKit

class MainTabController: UITabBarController {
    
    // MARK: - LIFECYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewControllers()
    }
    
    // MARK: - HELPER
    
    func configureViewControllers() {
        view.backgroundColor = .white
        
        let feed = FeedController()
        let search = SearchController()
        let imageSelector = ImageSelectorController()
        let notifications = NotificationController()
        let profile = ProfileController()
        
        viewControllers = [feed, search, imageSelector, notifications, profile]
    }
}
