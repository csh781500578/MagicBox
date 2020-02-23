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
    
    
}
