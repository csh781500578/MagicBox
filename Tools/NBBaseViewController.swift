//
//  NBBaseViewController.swift
//  Prototype
//
//  Created by 陈思行 on 2020/1/22.
//  Copyright © 2020 陈思行. All rights reserved.
//

import UIKit

class NBBaseViewController: UIViewController {

    var navigationBarHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = navigationBarHidden
    }

}
