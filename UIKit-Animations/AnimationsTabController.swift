//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Matthew Ramos on 1/31/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    private lazy var sampleAnimationsVC: SampleAnimationsController = {
        let viewController = SampleAnimationsController()
        viewController.tabBarItem = UITabBarItem(title: "Sample Animations", image:
            UIImage(systemName: "1.circle"), tag: 0)
        
        return viewController
    }()
    
    private lazy var constraintsAnimationVC: ConstraintsAnimationController = {
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        guard let viewController = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("Could not load")
        }
        viewController.tabBarItem = UITabBarItem(title: "Constraints Animation", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [sampleAnimationsVC, constraintsAnimationVC]
    }
}
