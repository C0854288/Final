//
//  ViewController.swift
//  sliders
//
//  Created by Sunkara Vishnu vardhan on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Switch: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var Stepper: UIStepper!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var Slider: UISlider!
    @IBOutlet weak var sliderSwitch: UILabel!
   
    @IBAction func switchChg(_ sender: UISwitch) {
        if sender.isOn{
            switchLabel.text = "on"
            
        } else {
            switchLabel.text = "off"
        }
    
        
        
    }
    
    @IBAction func stepperChg(_ sender: UIStepper) {
        
        stepperLabel.text = String(Int(Stepper.value))
    }
    
    @IBAction func sliderChg(_ sender: UISlider) {
        
      
        sliderSwitch.text = String(Int((Slider.value)))
    }
    
        
         override func viewDidLoad() {
             super.viewDidLoad()
             // Do any additional setup after loading the view.
         }


}

