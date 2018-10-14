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
    let myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Создали свитч
        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        
        self.myButton.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
        self.myButton.backgroundColor = UIColor.yellow
        self.myButton.setTitle("Ok", for: .normal)
        self.myButton.setTitle("Кнопка вызвана", for: .highlighted)
        
        self.view.addSubview(myButton)
        
        self.mySwitch.frame = CGRect.zero
        self.mySwitch.center = self.view.center
        self.view.addSubview(self.mySwitch)
        
        // Оттенок off состояния
        self.mySwitch.tintColor = UIColor.green
        
        // Цвет рычага
        self.mySwitch.thumbTintColor = UIColor.red
        
        // Оттенок on состояния
        self.mySwitch.onTintColor = UIColor.blue
        
        self.mySwitch.addTarget(self, action: #selector(switchCall(target: )), for: .valueChanged)
        
        // On
//        self.mySwitch.setOn(true, animated: true)
//
//        if self.mySwitch.isOn {
//            print("Свитч включен")
//        } else {
//            print("Свитч выключен")
//        }
//
//        self.mySwitch.addTarget(self, action: #selector(switchChange(param:)), for: .valueChanged)
        
    }
    
    @objc func switchCall(target: UISwitch) {
        if target.isOn {
            self.myButton.isUserInteractionEnabled = false
        } else {
            self.myButton.isUserInteractionEnabled = true
        }
    }
    
//    @objc func switchChange(param: UISwitch) {
////        print("param is ", param)
//
//        if param.isOn {
//            print("Свитч включен")
//        } else {
//            print("Свитч выключен")
//        }
//    }


}

