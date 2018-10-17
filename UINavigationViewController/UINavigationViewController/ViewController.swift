//
//  ViewController.swift
//  UINavigationViewController
//
//  Created by Ришат Гайсин on 17/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var displaySecondButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First VC"
        
        self.displaySecondButton = UIButton(type: .system)
        self.displaySecondButton.setTitle("Second VC", for: .normal)
        self.displaySecondButton.sizeToFit()
        self.displaySecondButton.center = self.view.center
        self.displaySecondButton.addTarget(self, action: #selector(touchButton), for: .touchUpInside)
        self.view.addSubview(displaySecondButton)
        
    }
    
    @objc func touchButton(param: Any) {
        
        let secondVC = secondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }


}

