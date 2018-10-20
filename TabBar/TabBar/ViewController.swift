//
//  ViewController.swift
//  TabBar
//
//  Created by Ришат Гайсин on 20/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "First VC"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 0)
//        tabBarItem.image = UIImage(named: "arbuz")
        self.tabBarItem = tabBarItem
        
        self.view.backgroundColor = UIColor.yellow
        
        
    }


}

