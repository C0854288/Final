//
//  firstPageForBooksAndWriters.swift
//  exerciseBeforeProject
//
//  Created by Sunkara Vishnu vardhan on 18/06/22.
//

import UIKit
class firstPageForBooksAndWriters : UIViewController  {
   var imgArr = ["1","2","3"]
   var lblTextArr = ["Mahatma Gandhi","Jawaharlal Nehru",  "Bhagat Singh"]

    @IBOutlet weak var Table: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Table.delegate = self
        Table.dataSource = self
       
    }
    
}

extension firstPageForBooksAndWriters : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArr.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! secondPageForBooksAndControllersTableViewCell
        cell.titleImg?.image = UIImage(named:imgArr[indexPath.row])
        cell.titleLabel.text = lblTextArr[indexPath.row]
        return cell
    }
    }


extension UIViewController : UITableViewDelegate{
      
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
      
}
