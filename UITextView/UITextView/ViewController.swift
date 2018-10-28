//
//  ViewController.swift
//  UITextView
//
//  Created by Ришат Гайсин on 28/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myTextView = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createTextView()
        
    }
    
    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: self.view.bounds.width - 50, height: self.view.bounds.height / 2))
        myTextView.text = "Text here..."
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = UIColor.gray
        self.view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.myTextView.resignFirstResponder()
        self.myTextView.backgroundColor = UIColor.white
    }

    func updateTextView(param: Notification) {
        let userInfo = param.userInfo
        
        let getKeyBoardRect = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyBoardFrame = self.view.convert(getKeyBoardRect, to: view.window)
        
        if param.name == UIResponder.keyboardWillHideNotification {
        
            myTextView.contentInset = UIEdgeInsets.zero
        
        } else {
            myTextView.contentInset = UIEdgeInsets(top: 0,left: 0,bottom: keyBoardFrame.height,right: 0)
            myTextView.scrollIndicatorInsets = myTextView.contentInset
        }
        
    }

}

