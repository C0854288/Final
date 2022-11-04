//
//  ViewController.swift
//  labTest2
//
//  Created by Sunkara Vishnu vardhan on 24/06/22.
//

import UIKit

class ViewController: UIViewController {
  
    
    var image = ["trump","elon","helen"]
    var student1:[String] = ["Donald Trump","Elon Musk","Helen David"]
    var student2:[String] = ["Email: 123@gmail.com","Email: 456@gmail.com","Email: 789@gmail.com"]
    var student3:[String] = ["Mark: 4.7", "Mark: 4.8", "Mark: 5.0"]

    @IBOutlet weak var tableView: UITableView!
    
    
   
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDataSource{
      

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SecondPage
        
        
        cell.nameLbl?.text = student1[indexPath.row]
            cell.emailLbl?.text = student2[indexPath.row]
            cell.marksLbl?.text = student3[indexPath.row]
        cell.titleImg?.image = UIImage(named: image[indexPath.row])
                
        
        return cell
    }
      

}
  
  
extension ViewController : UITableViewDelegate{
      
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Details".description
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
