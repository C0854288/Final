//
//  CityDetailViewController.swift
//  collectionView
//
//  Created by Sunkara Vishnu vardhan on 21/06/22.
//

import UIKit

class CityDetailViewController: UIViewController {
    var city: City?
        
    
   
    @IBOutlet weak var cityImageView: UIImageView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            cityImageView.image = UIImage(named: city?.image ?? "")
            
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
