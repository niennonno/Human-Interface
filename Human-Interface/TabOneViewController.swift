//
//  TabOneViewController.swift
//  Human-Interface
//
//  Created by Aditya Vikram Godawat on 23/01/17.
//  Copyright © 2017 Wow Labz. All rights reserved.
//

import UIKit

class TabOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
        self.title = "Tab 1"
        
        self.navigationItem.title = "One"
        
        
        let aButton = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 45))
        aButton.backgroundColor = .red
        aButton.setTitle("Modal", for: .normal)
        aButton.addTarget(self, action: #selector(showModal), for: .touchUpInside)
        view.addSubview(aButton)
        
    }
    
    
    func showModal() {
        
        let aVC = ModalViewController()
        let aNavVC = UINavigationController(rootViewController: aVC)
        self.present(aNavVC, animated: true, completion: nil)
    }
}
