//
//  welcomePage.swift
//  project2
//
//  Created by dev293 on 23/06/22.
//

import UIKit

class welcomePage: UIViewController
{
 

    
    

    
    
        
        
        @IBOutlet weak var textlabel: UILabel!
        
        
       
        var dataString: String = ""
        
        override func viewDidLoad() {
            super.viewDidLoad()
        
            print(dataString)
            textlabel.text = dataString
            
        }
    
    
    @IBAction func calcbutton(_ sender: UIButton)
    {
        
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "cp1") as! CalculatorViewController
      
        
      
        
        self.navigationController?.pushViewController(vc1, animated: true)
       
            
        
    }
        
    
    
    @IBAction func changepasswordbutton(_ sender: UIButton)
    {
        
        let vc2 = storyboard?.instantiateViewController(withIdentifier: "cp3") as! changePassword1
      
   
      
        
        self.navigationController?.pushViewController(vc2, animated: true)
       
            
        
    }
    

    }

