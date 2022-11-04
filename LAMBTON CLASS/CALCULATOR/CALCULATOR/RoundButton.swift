//
//  RoundButton.swift
//  CALCULATOR
//
//  Created by Sunkara Vishnu vardhan on 12/06/22.
//

import UIKit


@IBDesignable

class RoundButton: UIButton {
    @IBInspectable var roundButton:Bool = false {
  didSet {
            if roundButton {
                layer.cornerRadius = frame.height / 2
                
            }
        }
    }
    
}
