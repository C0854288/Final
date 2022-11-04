//
//  changePassword.swift
//  project2
//
//  Created by Sunkara Vishnu vardhan on 27/06/22.
//

import UIKit





class changePassword1: UIViewController {
  
   
    func reset(){
        
    oldPasswordError.isHidden = true
        
       
        
    }
    
    @IBOutlet weak var oldPass: UITextField!
    
    
    @IBOutlet weak var oldPasswordError: UILabel!
    
    
    @IBOutlet weak var newPassword: UITextField!
    
    @IBAction func changePassword(_ sender: Any) {
        
        
        print(newPassword.text)
        if oldPass.text == updatepassword{
        updatepassword = newPassword.text!
        
        let alert = UIAlertController(title: "Password Updation is successfull", message: "You can now login using your new password", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Login Again", style: .default, handler: {action in self.loginAgain()})
        alert.addAction(restartAction)
        present(alert , animated:true , completion: nil)
        
        }
        else if oldPass.text != updatepassword{
           oldPasswordError.text  = "Incorrect Password or No Password"
           oldPasswordError.isHidden = false
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
            dataString = newPassword.text!
            reset()
        }
    
    
    
    
    


}
