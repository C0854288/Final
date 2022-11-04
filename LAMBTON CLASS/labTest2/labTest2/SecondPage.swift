//
//  SecondPage.swift
//  labTest2
//
//  Created by Sunkara Vishnu vardhan on 24/06/22.
//

import UIKit

class Second: UITableViewCell {
    
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var marksLbl: UILabel!
    
   
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        titleImg.clipsToBounds = true
        titleImg.layer.cornerRadius = titleImg.frame.size.width / 2
      
        nameLbl.backgroundColor = UIColor.blue
        emailLbl.backgroundColor = UIColor.blue
        marksLbl.backgroundColor = UIColor.blue
        
        
        
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
