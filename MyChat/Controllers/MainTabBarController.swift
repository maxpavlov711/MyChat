//
//  MainTabBarController.swift
//  MyChat
//
//  Created by Max Pavlov on 30.04.22.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let listViewController = ListViewController()
        let peopleViewController = PeopleViewController()
        
        UITabBar.appearance().backgroundColor = .white
//        UINavigationBar.appearance().backgroundColor = .white
        
        tabBar.tintColor = #colorLiteral(red: 0.629904747, green: 0.4648939967, blue: 0.9760698676, alpha: 1)
        let boldCofig = UIImage.SymbolConfiguration(weight: .medium)
        let convImage = UIImage(systemName: "bubble.left.and.bubble.right", withConfiguration: boldCofig)!
        let peopleImage = UIImage(systemName: "person.2", withConfiguration: boldCofig)!
        
        viewControllers = [generateNavigationController(rootViewController: listViewController, title: "Conversations", image: convImage), generateNavigationController(rootViewController: peopleViewController, title: "People", image: peopleImage)]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
