//
//  changePasswordPage.swift
//  project2
//
//  Created by dev293 on 23/06/22.
//

import UIKit


class changePasswordPage: UIViewController
{
    func reset(){
        
        userNameError.isHidden = true
        
       
        
    }
  
    @IBOutlet weak var oldusername: UITextField!
    
    
    @IBOutlet weak var newpass: UITextField!
    
    @IBOutlet weak var userNameError: UILabel!
    
    @IBAction func updatePassword(_ sender: Any)
    {
      
        print(newpass.text)
       
        if oldusername.text == userName {
        updatepassword = newpass.text!
        
        let alert = UIAlertController(title: "Password Updation is successfull", message: "You can now login using your new password", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Login Again", style: .default, handler: {action in self.loginAgain()})
        alert.addAction(restartAction)
        present(alert , animated:true , completion: nil)
        }
        
        else if oldusername.text != userName{
            userNameError.text  = "Incorrect UserName or No UserName"
            userNameError.isHidden = false
        }
        
            
            
      
            
    }
    
    
    func loginAgain()
    {
        
        navigationController?.popToRootViewController(animated: true)
    }
      
        var dataString: String = ""
        override func viewDidLoad() {
            super.viewDidLoad()

            print(dataString)
            dataString = newpass.text!
           reset()
        }
        

    }
