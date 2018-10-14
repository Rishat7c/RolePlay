//
//  ViewController.swift
//  UIAlertController
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func firstButton(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Error", message: "Hello, world!", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first?.text
            print(text ?? "nil text")
        }
        
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController,animated: true,completion: nil)
        
    }
    
}

