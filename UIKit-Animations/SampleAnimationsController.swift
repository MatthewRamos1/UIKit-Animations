//
//  SampleAnimationsController.swift
//  UIKit-Animations
//
//  Created by Matthew Ramos on 1/31/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class SampleAnimationsController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        pulsatingAnimation()
    }
    
    private func scaleAnimation() {
        UIView.animate(withDuration: 1.5) { // 1/3 of a second
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
        }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }) { (done) in
            UIView.animate(withDuration: 0.3) {
                self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity
            }
            //if you want to go beyond creating an animation in this completion handler. the better choice would be animateKeyFrames()
        }
    }
}

