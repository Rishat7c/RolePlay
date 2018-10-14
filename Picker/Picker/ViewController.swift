//
//  ViewController.swift
//  Picker
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        self.view.addSubview(picker)
        
        
        
    }


}

