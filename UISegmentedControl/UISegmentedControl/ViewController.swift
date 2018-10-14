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
    var imageView = UIImageView()
    let imageArray = [UIImage(named: "c.png"),UIImage(named: "swift.png"),UIImage(named: "java.png")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(imageView)
        
        // Создание сегмента
        self.segmentControl = UISegmentedControl(items: self.menuArray)
        self.segmentControl.frame = CGRect(x: 100, y: 500, width: 200, height: 30)
        self.view.addSubview(segmentControl)
        
        segmentControl.addTarget(self, action: #selector(checkedControl), for: .valueChanged)
        
    }

    @objc func checkedControl(param: UISegmentedControl) {
        if param == self.segmentControl {
            let segmentIndex = param.selectedSegmentIndex
            self.imageView.image = self.imageArray[segmentIndex]
            let tfs = param.titleForSegment(at: segmentIndex)
            print(tfs ?? "")
        }
    }

}

