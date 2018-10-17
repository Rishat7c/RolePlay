//
//  ViewController.swift
//  UIActivityViewActivity
//
//  Created by Ришат Гайсин on 17/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewController: UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: - Method
    
    func createTextField() {
        self.textField.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        self.textField.center = self.view.center
        
    }

}

