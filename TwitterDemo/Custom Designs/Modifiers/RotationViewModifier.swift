//
//  RotationViewModifier.swift
//  TwitterDemo
//
//  Created by Ankush on 03/03/23.
//

import SwiftUI

struct RotationViewModifier: ViewModifier {
    
    let rotation: Double
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(Angle(degrees: rotation))
    }
}


extension AnyTransition {
    
    static var rotating: AnyTransition {
        return AnyTransition
            .modifier(active: RotationViewModifier(rotation: 360), identity: RotationViewModifier(rotation: 0))
    }
}
