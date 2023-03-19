//
//  Triangle.swift
//  TwitterDemo
//
//  Created by Ankush on 03/03/23.
//

import Foundation
import SwiftUI


struct Triangle: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        }
    }
}
