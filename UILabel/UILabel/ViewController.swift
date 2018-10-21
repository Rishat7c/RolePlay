//
//  ViewController.swift
//  UILabel
//
//  Created by Ришат Гайсин on 21/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 50)
        self.myLabel.frame = labelFrame
        self.myLabel.text = "Привет, Ришат"
        self.myLabel.numberOfLines = 0 // Кол-во линий если не вмещается предложение в лейбле
        self.myLabel.lineBreakMode = .byWordWrapping // Обрыв по словам
        self.myLabel.adjustsFontSizeToFitWidth = true // ...
        self.myLabel.sizeToFit() // Ничего не хайдит
        self.myLabel.font = UIFont.boldSystemFont(ofSize: 24)
        self.myLabel.center = self.view.center
        self.myLabel.textColor = UIColor.black
        self.myLabel.shadowColor = UIColor.lightGray
        self.myLabel.shadowOffset = CGSize(width: 2, height: 2)
        self.view.addSubview(self.myLabel)
        
    }


}

