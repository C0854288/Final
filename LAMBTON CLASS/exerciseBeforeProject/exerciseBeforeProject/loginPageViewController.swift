//
//  loginPageViewController.swift
//  exerciseBeforeProject
//
//  Created by Sunkara Vishnu vardhan on 18/06/22.
//

import UIKit

class loginPageViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var dataString:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dataString)
        displayLabel.text = dataString

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
