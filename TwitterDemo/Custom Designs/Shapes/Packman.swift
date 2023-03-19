//
//  Packman.swift
//  TwitterDemo
//
//  Created by Ankush on 03/03/23.
//

import Foundation
import SwiftUI

struct Packman: Shape {
    
    var offSetAmount: Double
    
    var animatableData: Double {
        get { offSetAmount}
        set { offSetAmount = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let point = CGPoint(x: rect.midX, y: rect.midY)
            path.move(to: point)
            path.addArc(center: point, radius: rect.height/2, startAngle: Angle(degrees: offSetAmount), endAngle: Angle(degrees: 360 - offSetAmount), clockwise: false)
        }
    }
}

