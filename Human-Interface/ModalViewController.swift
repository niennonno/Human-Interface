//
//  ModalViewController.swift
//  Human-Interface
//
//  Created by Aditya Vikram Godawat on 27/01/17.
//  Copyright © 2017 Wow Labz. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Modal"
        
        view.backgroundColor = .white
    

        let aButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(diiss))
        self.navigationItem.rightBarButtonItem = aButton
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)

    }

    func diiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
