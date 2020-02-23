//
//  UIImageViewExtension.swift
//  Prototype
//
//  Created by 陈思行 on 2020/1/30.
//  Copyright © 2020 陈思行. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(_ url: String?, placeholder: UIImage? = nil, completion: ((UIImage?)->())? = nil) {
        guard let string = url else {
            return
        }
        guard let urlString = URL(string: string) else {
            return
        }
        let resource = ImageResource(downloadURL: urlString)
        kf.setImage(with: resource, placeholder: placeholder, options: nil, progressBlock: nil) { (image, error, cache, imageurl) in
            completion?(image)
        }
    }
}
