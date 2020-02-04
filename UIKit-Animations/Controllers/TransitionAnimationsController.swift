//
//  TransitionAnimationsController.swift
//  UIKit-Animations
//
//  Created by Matthew Ramos on 2/4/20.
//  Copyright © 2020 Matthew Ramos. All rights reserved.
//

import UIKit

class TransitionAnimationsController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private lazy var tapGesture: UITapGestureRecognizer = {
        let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(animate(_:)))
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        imageView.addGestureRecognizer(tapGesture)
    }
    
    @objc
    private func animate(_ input: Int) {
        let duration: Double = 1.5
        let curveOption: UIView.AnimationOptions = .curveEaseInOut
        if imageView.image == UIImage(named: "dog") {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromRight, curveOption], animations: {
                self.imageView.image = UIImage(named: "cat")
            }, completion: nil)
        } else {
            UIView.transition(with: imageView, duration: duration, options: [.transitionFlipFromLeft, curveOption], animations: {
                self.imageView.image = UIImage(named: "dog")
            }, completion: nil)
        }
    }
}
