//
//  Coordinator.swift
//  Coordinators
//
//  Created by Adrian on 13/09/2019.
//  Copyright © 2019 Adrian. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
