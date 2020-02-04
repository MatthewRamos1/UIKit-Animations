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
        scaleAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    private func scaleAnimation() {
        UIView.animate(withDuration: 1, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 20.0, y: 20.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
        }) { (done) in
            UIView.animate(withDuration: 1) {
                self.sampleAnimationsView.swiftLogo.isHidden = false
                self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
            }
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

