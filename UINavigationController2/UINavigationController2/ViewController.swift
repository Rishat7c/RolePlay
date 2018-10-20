//
//  ViewController.swift
//  UINavigationController2
//
//  Created by Ришат Гайсин on 19/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(touchItem))
        
    }
    
    @objc func touchItem(param: Any) {
        print("add click")
    }

}

