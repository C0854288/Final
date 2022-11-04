//
//  ViewController.swift
//  Vishnu_Vardhan_Sunkara_C0854288
//
//  Created by Sunkara Vishnu vardhan on 2022-09-13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var BMIOutput: UITextField!
    
    
    @IBOutlet weak var CalculateBMI: UIButton!
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBAction func Calculate(_ sender: Any) {
        if let heightstr = heightTextField.text{
            
            if heightstr == ""{
                return
            }
            
            
            else if let weightstr = weightTextField.text{
                
                if weightstr == ""{
                    return
                }
                else{
                    
                    
                    if let heightNum = Double(heightstr)
                    {
                        
                        if let weightNum = Double(weightstr){
                        
                        
                        let BMI:Double = (weightNum) / (heightNum * heightNum)
                        BMIOutput.text = String(BMI)
                        switch BMI {
                            
                            
                            
                        case 1..<15:
                            outputLabel.text = "very severly underweight"
                        case 15...16:
                            outputLabel.text = "severly underweight"
                        case 16..<18.5:
                            outputLabel.text = "underweight"
                        case 18.5..<25:
                            outputLabel.text = "Normal"
                        case 25..<30:
                            outputLabel.text = "overweight"
                            case 30..<35:
                                outputLabel.text = "moderately obese"
                            case 35..<40:
                                outputLabel.text = "severly obese"
                        case 40...60:
                                outputLabel.text = " very severly obese"
                                
                            
                        default:
                            return
                        }
                
                        
                        }
                        }
                
        }
        
        
    }
       
        }
     
    
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
    func textfieldshouldreturn (_ textfield :UITextField)-> Bool{
        
        self.weightTextField.resignFirstResponder()
        self.heightTextField.resignFirstResponder()
        return true
        
    }
}
