//
//  ViewController.swift
//  imageTable
//
//  Created by Sunkara Vishnu vardhan on 15/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var imgArr = ["socialmedia1","socialmedia2","socialmedia3"]
       var lblTextArr = ["facebook","instagram", "youtube"]
         

    @IBOutlet weak var Table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        Table.delegate = self
        Table.dataSource = self
    }


}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! secondPage
        cell.titleImg?.image = UIImage(named: imgArr[indexPath.row])
        cell.titleLbl.text = lblTextArr[indexPath.row]
        return cell
    }
    }

  
extension UIViewController : UITableViewDelegate{
      
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
      
}
