//
//  MainTabBarController.swift
//  iMusic
//
//  Created by Георгий Кузнецов on 10.09.2022.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        tabBar.tintColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        
        viewControllers = [
            generateViewController(rootViewControllet: SearchViewController(), image: #imageLiteral(resourceName: "search"), title: "Search")
            ,generateViewController(rootViewControllet: LibraryViewController(), image: #imageLiteral(resourceName: "library"), title: "Library")
            
        ]
    }
    
    private func generateViewController(rootViewControllet: UIViewController, image: UIImage, title: String) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewControllet)
        navigationVC.tabBarItem.image = image
        navigationVC.tabBarItem.title = title
        rootViewControllet.navigationItem.title = title
        navigationVC.navigationBar.prefersLargeTitles = true
        
        return navigationVC
    }
}
