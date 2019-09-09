//
//  GBKRouterProtocol+ViewController.swift
//  RouterDev
//
//  Created by zav on 9/9/19.
//  Copyright © 2019 zav. All rights reserved.
//

import UIKit

/// MARK: - UIViewController
public extension GBKRouterProtocol where Context == UIViewController {
    
    func present(controller: UIViewController, animated: Bool = true, complate: (() -> ())? = nil) {
        context?.present(controller, animated: animated, completion: complate)
    }
    
    func dismiss(animated: Bool = true, complate: (() -> ())? = nil) {
        context?.dismiss(animated: animated, completion: complate)
    }
    
}
