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
        
        self.createTextField()
        self.createButton()
    }

    //MARK: - Method
    
    func createTextField() {
        self.textField.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        self.textField.center = self.view.center
//        self.textField.borderStyle = UITextBorderStyle.roundedRect
        self.textField.placeholder = "Enter text to share"
        self.view.addSubview(self.textField)
    }
    
    func createButton() {
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
        self.buttonShare.setTitle("Sharred", for: .normal)
        self.buttonShare.addTarget(self, action: #selector(submitButton), for: .touchUpInside)
        self.view.addSubview(self.buttonShare)
        
    }

    @objc func submitButton(param: Any) {
        let text = self.textField.text
        
        if text?.characters.count == 0 {
            let message = "С начало введите текст"
            let alertController = UIAlertController(title: "Message", message: message, preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            alertController.addAction(alertAction)
            self.present(alertController,animated: true,completion: nil)
        }
        
        self.activityViewController = UIActivityViewController(activityItems: [self.textField.text ?? "nil"], applicationActivities: nil)
        
        self.present(self.activityViewController!, animated: true, completion: nil)
        
    }
    
}

