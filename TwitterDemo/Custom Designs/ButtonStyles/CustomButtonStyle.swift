//
//  CustomButtonStyle.swift
//  TwitterDemo
//
//  Created by Ankush on 03/03/23.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.2 : 1)
            .opacity(configuration.isPressed ? 0.5 : 1)
            .brightness(configuration.isPressed ? 0.05 : 0)
    }
}
