//
//  ViewController.swift
//  Sign in
//
//  Created by Sunkara Vishnu vardhan on 15/06/22.
//

import UIKit
protocol SecondViewControllerDelegate
{
    func messageData(data: String)
}

class ViewController: UIViewController,SecondViewControllerDelegate
{
    func messageData(data: String)
    {
        print(data)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var uName: UITextField!
   
    
    @IBOutlet weak var pwd: UITextField!
    
    
    @IBAction func sendData(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "display") as! secondViewController
                
                vc.delegate = self
       
                if uName.text == "user" && pwd.text == "pwd"
                {
                    vc.dataString = "Welcome \(uName.text!)"
                }
        else if uName.text != "user" && pwd.text != "pwd"
                {
                    vc.dataString =  "Welcome user"
                }
                else
        {
                    if uName.text != "user1"
                    {
                        vc.dataString = "Wrong Username"
                    }
                  else if pwd.text != "pwd"
                    {
                        vc.dataString = "Wrong Password"
                    }
 
                }
        self.navigationController?.pushViewController(vc, animated: true)
           
    }

}

