//
//  ThirdViewController.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-03.
//

import UIKit

class ThirdViewController: UIViewController {
    
    
    let picker = UIPickerView()

    @IBOutlet weak var colorPicker: UIPickerView!
    
    struct ColorOptions {
        
        var colorName: String
        var colorCode: UIColor
        
    }
    @IBOutlet var colorChose: [UIPickerView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(picker)

        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 100
        }
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "First \(row)"
        } else {
            return "Second \(row)"
        }
    }
    
}
