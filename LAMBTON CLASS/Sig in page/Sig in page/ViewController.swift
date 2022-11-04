//
//  ViewController.swift
//  Sig in page
//
//  Created by Sunkara Vishnu vardhan on 10/06/22.
//

import UIKit

class ViewController: UIViewController {
    private var secondController : DisplayPageViewController!
    
  
    
    @IBOutlet weak var passwordFieldss: UIView!
    @IBOutlet weak var userNameField: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
    }
    // private var secondPage : DisplayOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    
    
}









   /*
    @IBAction func signin(_ sender: Any)  {
        // when click on the btn
               var uname = username.text!
               var pwd  =  password.text!

               // read the user entry

              if uname == "user1" && pwd == "pwd1"
               {
                       display.text = "Welcome " + String(uname)
                   
               }
               else if uname != "user1" && pwd != "pwd1"
               {
                   display.text = "Invalid credentials"
               }
               else
               {
                   if uname != "user1"
                   {
                       display.text = "Wrong Username"
                   }
                   else if pwd != "pwd1"
                   {
                       display.text = "Wrong Password"
                   }
                   secondPage = storyboard?.instantiateViewController(identifier: "output")as? DisplayOutput
                   
                   secondPage.name = "My Name"
                   
                   self.present(secondPage, animated: true, completion: nil)
                   
               
               
               
               
               
               
               
               }

    }

}

        
*/
 


