//
//  ViewController.swift
//  UIAlertController
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func firstButton(_ sender: Any) {
        self.textLabel.text = "Hi, "
        self.alert(title: "Внимание!", message: "Введите имя", style: .alert)
    }
    
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.textLabel.text! += (text?.text!)!
            
//                        print(text ?? "nil text")
        }
        
        alertController.addTextField { (textField) in
            
        }
        
        //        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController,animated: true,completion: nil)
    }
    
}

