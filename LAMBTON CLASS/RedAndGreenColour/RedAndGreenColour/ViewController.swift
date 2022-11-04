//
//  ViewController.swift
//  RedAndGreenColour
//
//  Created by Sunkara Vishnu vardhan on 13/06/22.
//

import UIKit

class ViewController: UIViewController {
    private var Redp : RedButton!
    private var Greenp  : GreenButton!
   

    
    @IBAction func Red(_ sender: Any) {
        Redp = storyboard?.instantiateViewController(withIdentifier: "redcolour") as? RedButton
               self.present(Redp, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func GREEN(_ sender: Any) {
        Greenp = storyboard?.instantiateViewController(withIdentifier: "greencolour") as? GreenButton
               self.present(Greenp, animated: true, completion: nil)
        
        
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

