//
//  ViewController.swift
//  UISwitch
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch = UISwitch() // Переключатель On/Off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создали свитч
        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        
        // On
        self.mySwitch.setOn(true, animated: true)
        
        if self.mySwitch.isOn {
            print("Свитч включен")
        } else {
            print("Свитч выключен")
        }
        
        self.mySwitch.addTarget(self, action: #selector(switchChange(param:)), for: .valueChanged)
        
    }
    
    @objc func switchChange(param: UISwitch) {
//        print("param is ", param)
        
        if param.isOn {
            print("Свитч включен")
        } else {
            print("Свитч выключен")
        }
    }


}

