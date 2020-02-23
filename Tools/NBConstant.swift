//
//  NBConstant.swift
//  MagicBox
//
//  Created by 陈思行 on 2020/2/23.
//  Copyright © 2020 hanrychen. All rights reserved.
//

import UIKit

let KeyWindow : UIWindow?? = UIApplication.shared.delegate?.window

let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height
let ScreenSafeTop : CGFloat = KeyWindow??.safeAreaInsets.top ?? 20
let ScreenSafeBottom : CGFloat = KeyWindow??.safeAreaInsets.bottom ?? 0

