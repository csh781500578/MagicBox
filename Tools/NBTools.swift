//
//  NBTools.swift
//  NiceBeauty-Swift
//
//  Created by 陈思行 on 2019/9/1.
//  Copyright © 2019 陈思行. All rights reserved.
//

import UIKit

class NBTools: NSObject {

    static func isValidity(_ string: String?) -> Bool {
        if let str = string, str.count > 0 {
            return true
        }
        return false
    }
    
    static func isPhoneNumber(_ number: String?) -> Bool {
        guard let phoneNumber = number else {
            return false
        }
        if phoneNumber.isEmpty {
            return false
        }
        let mobile = "^(13[0-9]|15[0-9]|18[0-9]|17[0-9]|147)\\d{8}$"
        let regexMobile = NSPredicate(format: "SELF MATCHES %@",mobile)
        return regexMobile.evaluate(with: phoneNumber)
    }
    
}
