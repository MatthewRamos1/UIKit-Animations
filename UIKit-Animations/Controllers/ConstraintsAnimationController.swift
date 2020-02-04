//
//  ConstraintsAnimationController.swift
//  UIKit-Animations
//
//  Created by Matthew Ramos on 1/31/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {

    @IBOutlet weak var boxYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
    }
    
    @IBAction func animateUp(_ sender: UIButton) {
        boxYConstraint.constant -= 100
        //when we change the constraints in iOS and we need this change to be animated we only need to animate self.view.layoutIfNeeded and the animation will take place
        UIView.animate(withDuration: 0.8, delay: 0.0, usingSpringWithDamping: 0.4, initialSpringVelocity: 5.0, options: [.curveEaseIn], animations: {
            self.view.layoutIfNeeded()
        }) { (done) in
            
        }
    }
    
    @IBAction func animateDown(_ sender: UIButton) {
        boxYConstraint.constant += 100
    }
    
    
}
