//
//  ViewController.swift
//  labTestExe1
//
//  Created by Sunkara Vishnu vardhan on 16/06/22.
//

import UIKit

class ViewController: UIViewController{
    @IBOutlet weak var firstName: UITextField!
    
    
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    
    @IBAction func Login(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "display") as!
        SecondPageViewController
        
       // vc.delegate = self
        var FName = firstName.text!
        var LName = lastName.text!
        
        
        if age.text!  >= "0" && age.text! <= "12"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are a child"
            
        } else if age.text! >= "13" && age.text! <= "19"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are a teenager"
            
        }else if age.text! > "19" && age.text! <= "29"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are a young man"
            
        }
        
        
        
        else if age.text! >= "30" && age.text! <= "49"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are a middle aged man"
            
        }
        else if age.text! >= "50" && age.text! <= "64"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are an expereinced man"
            
        }
        else if age.text! >= "50" && age.text! <= "64"{
            
            vc.dataString = "Hi \(FName) \(LName)\n"+"you are a senior man"
            
        } else if age.text! < "0"{
            vc.dataString = "Hi \(FName) \(LName)\n"+"age cannot be negative"
            
        } else {
            vc.dataString = "invalid input details"
        }
        self.present(vc, animated: true, completion: nil)
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //self.present(vc, animated: true, completion: nil)
}

