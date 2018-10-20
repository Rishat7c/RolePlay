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
        
        title = "View controller"
        let items = ["up","down"]
        
        let segmentController = UISegmentedControl(items: items)
//        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector(vkladka), for: .valueChanged)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(customView: segmentController)
        
    }
    
    //MARK: - Method
    @objc func vkladka(param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0:
            print("up")
        case 1:
            print("down")
        default:
            break
        }
    }
    
}

