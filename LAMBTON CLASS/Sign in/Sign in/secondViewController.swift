//
//  secondViewController.swift
//  Sign in
//
//  Created by Sunkara Vishnu vardhan on 15/06/22.
//

import UIKit

class secondViewController: UIViewController
{
var delegate: SecondViewControllerDelegate?
   

    @IBOutlet weak var textLabel: UILabel!
    var dataString: String = ""
    override func viewDidLoad() {
            super.viewDidLoad()

         
            print(dataString)
            textLabel.text = dataString
            
        }
        

    }
