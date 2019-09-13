//
//  Storyboarded.swift
//  Coordinators
//
//  Created by Adrian on 13/09/2019.
//  Copyright © 2019 Adrian. All rights reserved.
//

import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self 
    }
}
