//
//  MainTabBarController.swift
//  InstagramFirebase
//
//  Created by Фараби Иса on 26.11.2023.
//

import UIKit
import Firebase

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser == nil {
            DispatchQueue.main.async {
                let loginController = LoginController()
                let navController = UINavigationController(rootViewController: loginController)
                navController.modalPresentationCapturesStatusBarAppearance = true
                navController.modalPresentationStyle = .fullScreen
                self.present(navController, animated: true, completion: nil)
            }
            
            return
        }
        
        setupViewControllers()
    }
    
    func setupViewControllers() {
        let layout = UICollectionViewFlowLayout()
        let userProfileController = UserProfileController(collectionViewLayout: layout)
        
        let navController = UINavigationController(rootViewController: userProfileController)
        
        tabBar.tintColor = .black
        
        viewControllers = [navController, UIViewController()]
    }
}
