//
//  UIView+Extension.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/4/21.
//

import UIKit
 
extension  UIView{
    @IBInspectable var CornerRadius : CGFloat{
        get{return self.CornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
