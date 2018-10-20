//
//  SecondViewController.swift
//  TabBar
//
//  Created by Ришат Гайсин on 20/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Second VC"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
//        tabBarItem.image = UIImage(named: "apple")
        self.tabBarItem = tabBarItem
        
        self.view.backgroundColor = UIColor.green
        
    }

}
