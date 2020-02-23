//
//  UIViewControllerExtension.swift
//  Prototype
//
//  Created by 陈思行 on 2020/1/30.
//  Copyright © 2020 陈思行. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func push(_ vc: UIViewController) {
        navigationController?.pushViewController(vc, animated: true)
    }
    
    /** 获取当前控制器 */
    static func current() -> UIViewController? {
        guard let vc = UIApplication.shared.delegate?.window??.rootViewController else {
            return nil
        }
        return UIViewController.findCurrent(vc: vc)
    }
    
    func setRightNavigationItem(_ images: UIImage? ...) {
        
        let customeView = UIView(frame: CGRect(x: 0, y: 0, width: 35 * images.count, height: 26))
        
        for (index, image) in images.enumerated() {
            let button = UIButton(type: .custom)
            button.frame = (CGRect)(x: 35 * index, y: 0, width: 26, height: 26)
            button.contentMode = .scaleAspectFit
            button.tag = 1000 + index
            button.setImage(image, for: .normal)
            button.addTarget(self, action: #selector(didSelectItemAction(_:)), for: .touchUpInside)
            customeView.addSubview(button)
        }
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: customeView)
    }
    
    @objc func didSelectItemAction(_ item: UIButton) {
        didSelectRightItem(item.tag - 1000)
    }
    
    func didSelectRightItem(_ index: Int) {
        
    }
    
    private static func findCurrent(vc: UIViewController) -> UIViewController {
        if let controller = vc.presentedViewController {
            return UIViewController.findCurrent(vc: controller)
        } else if let svc = vc as? UISplitViewController, let controller = svc.viewControllers.last {
                return UIViewController.findCurrent(vc: controller)
        } else if let svc = vc as? UINavigationController, let controller = svc.topViewController {
                return UIViewController.findCurrent(vc: controller)
        } else if let svc = vc as? UITabBarController, let controller = svc.selectedViewController {
                return UIViewController.findCurrent(vc: controller)
        } else {
            return vc
        }
    }
}
