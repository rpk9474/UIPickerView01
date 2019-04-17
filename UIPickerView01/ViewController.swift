//
//  ViewController.swift
//  UIPickerView01
//
//  Created by D7702_10 on 2019. 4. 17..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var outLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    var color = ["Red", "Green", "Blue", "White", "Yellow"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Delegate & ViewController 연결
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        outLabel.text = color[0]
    }
    
    // UIPickerViewDataSource Method
    // not optional
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // PickerView 갯수
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return color.count
    }
    
    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        print(row)
        
        return color[row]
    }

    // 리턴값 없음
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        outLabel.text = color[row]
    }
    
    public func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        // PickerView 크기 조절
        return 30.0
    }
    
}

