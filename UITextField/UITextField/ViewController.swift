//
//  ViewController.swift
//  UITextField
//
//  Created by Ришат Гайсин on 21/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        self.textField = UITextField(frame: textFieldFrame)
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        self.textField.textAlignment = .center
        self.textField.placeholder = "Hello, user"
        self.textField.center = self.view.center
        self.view.addSubview(self.textField)
        
    }


}

