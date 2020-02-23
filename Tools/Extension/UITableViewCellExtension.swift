//
//  UITableViewCellExtension.swift
//  Prototype
//
//  Created by 陈思行 on 2020/1/28.
//  Copyright © 2020 陈思行. All rights reserved.
//

import UIKit

extension UITableViewCell: UISetModelProtocol {
    
    @objc func setModel(_ model: NBViewModel) {
        
    }
    
    @objc func setSelectCellBlock(_ block: @escaping ((Int)->())) {
        
    }
}
