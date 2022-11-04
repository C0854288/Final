//
//  loginPage.swift
//  project2
//
//  Created by dev293 on 23/06/22.
//

import UIKit

var userName = "Vishnu"
var updatepassword = "Vishnu"
class loginPage: UIViewController
{
    
    

    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var uname: UITextField!
    
    @IBOutlet weak var pwd: UITextField!
    
 
    
    func RestartPage()
    {
        
        uname.text
        pwd.text
        
        
    }
    
    @IBAction func forgotPass(_ sender: Any)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cp2") as? changePasswordPage
        
     
        
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
    
    
    @IBAction func senddata(_ sender: UIButton)
    {
        let vc = storyboard?.instantiateViewController(withIdentifier: "cp3") as? changePassword1
        
       
        
        if uname.text == userName && pwd.text == updatepassword
        {
            let vc1 = storyboard?.instantiateViewController(withIdentifier: "wp") as! welcomePage
            
            self.navigationController?.pushViewController(vc1, animated: true)
            
            vc1.dataString = "Welcome  \(uname.text!)"
            
           
        }
        else if uname.text != userName && pwd.text != updatepassword
        {
           
            let alert = UIAlertController(title: "User credentials are invalid", message: "Please Try Again", preferredStyle: .alert)
            let restart = UIAlertAction(title: "Press Here To Go Back To Login Page", style: .default, handler: {action in self.RestartPage()})
            
            alert.addAction(restart)
            present(alert , animated: true,completion: nil)
            
        }
            
        else
        {
            if uname.text != userName
            {
               
                let alert = UIAlertController(title: "userName is Invalid", message: "Please Try Again", preferredStyle: .alert)
                let restart = UIAlertAction(title: "Press Here To Go Back To Login Page", style: .default, handler: {action in self.RestartPage()})
                
                alert.addAction(restart)
                present(alert , animated: true,completion: nil)
                
            }
                
            else if pwd.text != updatepassword
            {
                
                
                let alert = UIAlertController(title: "Password is Invalid", message: "Please Try Again", preferredStyle: .alert)
                let restart = UIAlertAction(title: "Press Here To Go Back To Login Page", style: .default, handler: {action in self.RestartPage()})
                
                alert.addAction(restart)
                present(alert , animated: true,completion: nil)
                
            }
    
        
    }
    
    
    
}
}


