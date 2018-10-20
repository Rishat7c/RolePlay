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
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "apple")
        imageView.image = image
        
        self.navigationItem.titleView = imageView
        
    }


}

