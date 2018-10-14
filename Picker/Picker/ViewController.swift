//
//  ViewController.swift
//  Picker
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let picker = UIPickerView()
    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        picker.datePickerMode = .date
        
        // Подписка на протокол
//        picker.dataSource = self
//        picker.delegate = self
        
        self.view.addSubview(picker)
        
        var oneYear = TimeInterval()
        oneYear = 365 * 24 * 60 * 60
        
        let today = Date()
        
        let intervalYears_1 = today.addingTimeInterval(oneYear)
        let intervalYears_2 = today.addingTimeInterval(oneYear*2)
        
        picker.minimumDate = intervalYears_1
        picker.maximumDate = intervalYears_2
        
        picker.addTarget(self, action: #selector(datePickerSelected(param:)), for: .valueChanged)
        
    }

    @objc func datePickerSelected(param: UIDatePicker) {
        if(param.isEqual(self.picker)) {
            print("data selected : ", param.date) // Именно date, а не datA
        }
    }

}

//// Расширяем родительский класс
//extension ViewController: UIPickerViewDataSource {
//
//    // Сколько компонентов выводить
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    // Сколько строк в компоненте
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        // Кол-во строк
//        return 10
//    }
//
//}
//
//extension ViewController: UIPickerViewDelegate {
//
//    // Выводим строки
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        let result = "row = \(row)"
//        return result
//    }
//
//}
