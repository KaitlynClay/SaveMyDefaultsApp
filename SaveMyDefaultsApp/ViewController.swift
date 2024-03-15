//
//  ViewController.swift
//  SaveMyDefaultsApp
//
//  Created by student on 3/15/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func mySaveBtn(_ sender: Any) {
        UserDefaults.standard.set(mySerialNum.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func myLoadBtn(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNum.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    @IBAction func myDeleteBtn(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNum.text = ""
    }
    
    @IBOutlet weak var mySerialNum: UITextField!
    
    @IBOutlet weak var mySlider: UISlider!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

