//
//  AnimationsTabController.swift
//  UIKit-Animations
//
//  Created by Matthew Ramos on 1/31/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewControllers = [SampleAnimationsController(), ConstraintsAnimationController()]
    }
}
