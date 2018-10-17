//
//  File.swift
//  UINavigationViewController
//
//  Created by Ришат Гайсин on 17/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import Foundation
import UIKit

class secondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second VC"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.perform(#selector(goBack), with: nil, afterDelay: 3.0)
    }
    
    @objc func goBack() {
        self.navigationController?.popViewController(animated: true)
    }
    
}
