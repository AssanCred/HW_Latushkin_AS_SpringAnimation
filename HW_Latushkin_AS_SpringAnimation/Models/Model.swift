//
//  Model.swift
//  HW_Latushkin_AS_SpringAnimation
//
//  Created by Артём Латушкин on 03.05.2023.
//

import Foundation

struct AnimationChose {
    var animation: String
    var curve: String
    var force: Double
    var duration: Double
    var delay: Double
    
    static var animation: AnimationChose {
        AnimationChose(
            animation: AnimationDataStore.shared.nameOfAnimation.randomElement() ?? "",
            curve: AnimationDataStore.shared.nemeOfCurve.randomElement() ?? "",
            force: AnimationDataStore.shared.valueOfForce.randomElement() ?? 0.0,
            duration: AnimationDataStore.shared.valueOfDuration.randomElement() ?? 0.0,
            delay: AnimationDataStore.shared.valueOfDelay.randomElement() ?? 0.0
        )
    }
}
