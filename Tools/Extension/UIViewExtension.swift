//
//  UIViewExtension.swift
//  Prototype
//
//  Created by 陈思行 on 2020/1/22.
//  Copyright © 2020 陈思行. All rights reserved.
//

import UIKit

extension UIView : UIViewPendantPotocol {
    
}

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            self.layer.cornerRadius = newValue
            self.layer.masksToBounds = true
        }
        get {
            return self.layer.cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            self.layer.borderWidth = newValue
        }
        get {
            return self.layer.borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            self.layer.borderColor = newValue?.cgColor
        }
        get {
            guard let color = self.layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        set {
            self.layer.shadowColor = newValue?.cgColor
        }
        get {
            guard let color = self.layer.shadowColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        set {
            self.layer.shadowOffset = newValue
        }
        get {
            return self.layer.shadowOffset
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        set {
            self.layer.shadowOpacity = newValue
        }
        get {
            return self.layer.shadowOpacity
        }
    }
}
