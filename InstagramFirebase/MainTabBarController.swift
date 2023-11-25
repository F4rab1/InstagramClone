//
//  MainTabBarController.swift
//  InstagramFirebase
//
//  Created by Фараби Иса on 26.11.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        let navController = UINavigationController(rootViewController: userProfileController)
        
        navController.tabBarItem.image = UIImage(systemName: "person")
        navController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        tabBar.tintColor = .black
        
        viewControllers = [navController, UIViewController()]
    }
}
