//
//  SecondPageViewController.swift
//  labTestExe1
//
//  Created by Sunkara Vishnu vardhan on 16/06/22.
//

import UIKit

class SecondPageViewController: UIViewController {
 
    @IBOutlet weak var displayLabel: UILabel!
    var dataString:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dataString)
        displayLabel.text = dataString
        // Do any additional setup after loading the view.
    }
    

    

}
