//
//  GBKRouterProtocol+NavigationController.swift
//  RouterDev
//
//  Created by zav on 9/9/19.
//  Copyright © 2019 zav. All rights reserved.
//

import UIKit

/// MARK: - UINavigationController
extension GBKRouterProtocol where Context == UINavigationController {
    
    func push(controller: UIViewController, animated: Bool = true) {
        context?.pushViewController(controller, animated: animated)
    }
    
    func popController(animated: Bool = true) {
        _ = context?.popViewController(animated: animated)
    }
    
    func popToRootController(animated: Bool = true) {
        _ = context?.popToRootViewController(animated: animated)
    }
    
    func popTo(controller: UIViewController, animated: Bool = true) {
        _ = context?.popToViewController(controller, animated: animated)
    }
}
