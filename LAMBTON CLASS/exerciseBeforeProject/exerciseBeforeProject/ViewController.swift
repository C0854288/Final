//
//  ViewController.swift
//  exerciseBeforeProject
//
//  Created by Sunkara Vishnu vardhan on 17/06/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBAction func Login(_ sender: Any) {
       let vc = storyboard?.instantiateViewController(withIdentifier: "loginPageViewController") as!
        loginPageViewController
        
    
        
        var UName = userName.text!
        var pwd = password.text!
        
        
        if UName  == "user1" && pwd == "pwd"{
            
            vc.dataString = "Welcome \(UName)"
            
        } else if UName  == "user1" && pwd != "pwd"{
            
            vc.dataString = "Wrong password"
            
        }else  if UName  != "user1" && pwd == "pwd"{
            
            vc.dataString = "Wrong userName"
            
        }
        
        
        else  if UName  != "user1" && pwd != "pwd"{
            
            vc.dataString = "Invalid Details"
            
        } else{
            
            print("nothing is correct")
        }
        
        self.present(vc, animated: true, completion: nil)
    }
    
        
        
        
        
        
        
  
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

