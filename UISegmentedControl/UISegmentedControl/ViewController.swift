//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var segmentControl = UISegmentedControl()
    var menuArray = ["one","two","thee"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создание сегмента
        self.segmentControl = UISegmentedControl(items: self.menuArray)
        self.segmentControl.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        self.view.addSubview(segmentControl)
        
    }


}

