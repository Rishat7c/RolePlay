//
//  ViewController.swift
//  UITextField
//
//  Created by Ришат Гайсин on 21/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createTextField()
        
        self.textField.delegate = self // Подписываемся на текущий контроллер
        
    }
    
    //MARK: - CreateUI
    func createTextField() {
        let textFieldFrame = CGRect(x: 0, y: 0, width: 200, height: 31)
        
        self.textField = UITextField(frame: textFieldFrame)
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        self.textField.textAlignment = .center
        self.textField.placeholder = "Hello, user"
        self.textField.center = self.view.center
        self.view.addSubview(self.textField)
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing = это я решаю можно ли редачить поле?")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing = внимание! началось редактирование")
    }
   
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing = закончилось редактирование")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("textFieldDidEndEditing")
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print("shouldChangeCharactersIn = вы ввели какую-то букву/символ = \(string)")
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear = ты что-то очистил")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn = хотите убрать клаивиатуру?")
        return true
    }

}

