//
//  ViewController.swift
//  Human-Interface
//
//  Created by Aditya Vikram Godawat on 23/01/17.
//  Copyright © 2017 Wow Labz. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Title"
        
        let aButton = UIBarButtonItem()
        aButton.title = "Cancel"
        
        self.navigationItem.title = "Title"
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        
        // Create Tab one
        let tabOne = TabOneViewController()
        let tabOneBarItem = UITabBarItem()
        tabOneBarItem.title = "One"
        tabOne.tabBarItem = tabOneBarItem
        
        let tabBar = UITabBar.appearance()
        tabBar.barTintColor = UIColor.clear
        tabBar.backgroundImage = UIImage()
        tabBar.shadowImage = UIImage()
            
        // Create Tab two
        let tabTwo = TabTwoViewController()
        let tabTwoBarItem2 = UITabBarItem()
        tabTwoBarItem2.title = "Two"
        
        tabTwo.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [tabOne, tabTwo]

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
          }
    
    // UITabBarControllerDelegate method
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected \(viewController.title!)")
        self.navigationItem.title = viewController.title!
    }
}
