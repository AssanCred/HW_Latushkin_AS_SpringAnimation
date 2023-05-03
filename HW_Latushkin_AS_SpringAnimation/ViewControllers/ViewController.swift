//
//  ViewController.swift
//  HW_Latushkin_AS_SpringAnimation
//
//  Created by Артём Латушкин on 03.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var animationNameLabel: UILabel!
    @IBOutlet var curveNameLabel: UILabel!
    @IBOutlet var forceValueLabel: UILabel!
    @IBOutlet var durationValueLabel: UILabel!
    @IBOutlet var delayValueLabel: UILabel!
    
    @IBOutlet var animationStatus: UIButton!
    
    private var animation = AnimationChose.animation
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Animations"
        springAnimationView.layer.cornerRadius = 10
        animationStatus.layer.cornerRadius = 10
    }
    
    @IBAction func runAnimationSpring() {
        getAnimation()
    }
}

// MARK: - Get Animation
extension ViewController {
    private func getAnimation() {
        springAnimationView.animation = animation.animation
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        
        springAnimationView.animate()
        
        animationStatus.setTitle("Name - \(animation.animation)", for: .normal)
        animationNameLabel.text = "Animation: \(animation.animation)"
        curveNameLabel.text = "Curve: \(animation.curve)"
        forceValueLabel.text = "Force: \(animation.force)"
        durationValueLabel.text = "Duration: \(animation.duration)"
        delayValueLabel.text = "Delay: \(animation.delay)"
        
        animation = AnimationChose.animation
        
        animationStatus.setTitle("Next - \(animation.animation)", for: .normal)
    }
}

