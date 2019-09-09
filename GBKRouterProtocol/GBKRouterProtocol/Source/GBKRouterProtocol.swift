//
//  GBKRouterProtocol.swift
//  RouterDev
//
//  Created by zav on 9/9/19.
//  Copyright © 2019 zav. All rights reserved.
//

import UIKit

/// MARK: - GBK Router Protocol
public protocol GBKRouterProtocol {
    associatedtype Context
    init()
    var context: Context? { set get }
}

/// MARK: - Base methods
public extension GBKRouterProtocol {
    
    init(in context: Context?) {
        self.init()
        self.context = context
    }
    
    func getStoryboard(by name: String? = nil) -> UIStoryboard {
        
        let storyName: String = {
            if let name = name { return name }
            return "\(type(of: self))".replacingOccurrences(of: "Router", with: "")
        }()
        
        return UIStoryboard(name: storyName, bundle: nil)
    }
    
    func getController<T>(type: T.Type, name: String? = nil) -> T? where T: UIViewController {
        
        let controllerName: String = {
            if let name = name { return name }
            return "\(Swift.type(of: T.self))".replacingOccurrences(of: ".Type", with: "")
        }()
        
        return getStoryboard().instantiateViewController(withIdentifier: controllerName) as? T
    }
}
