//
//  ViewController.swift
//  Color Picker
//
//  Created by Drew Smith on 4/16/18.
//  Copyright © 2018 Tech Innovator. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    //let colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
    
    let colors = [Color(name: "Red", uiColor: UIColor.red),
                  Color(name: "Orange", uiColor: UIColor.orange),
                  Color(name: "Yellow", uiColor: UIColor.yellow),
                  Color(name: "Green", uiColor: UIColor.green),
                  Color(name: "Blue", uiColor: UIColor.blue),
                  Color(name: "Purple", uiColor: UIColor.purple)]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        colorLabel.text = colors[row].name
        self.view.backgroundColor = colors[row].uiColor
    }
    
    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var colorPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorPickerView.selectRow(0, inComponent: 0, animated: true)
        colorLabel.text = colors[colorPickerView.selectedRow(inComponent: 0)].name
        self.view.backgroundColor = colors[colorPickerView.selectedRow(inComponent: 0)].uiColor
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

