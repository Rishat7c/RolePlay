//
//  ViewController.swift
//  Picker
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        // Подписка на протокол
        picker.dataSource = self
        
        self.view.addSubview(picker)
        
    }


}

// Расширяем родительский класс
extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
}
