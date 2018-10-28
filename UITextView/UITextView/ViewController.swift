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
        
        myTextView = UITextView(frame: self.view.bounds)
        myTextView.text = "Text here..."
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(myTextView)
        
    }


}

