//
//  Modifiers.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import Foundation
import SwiftUI


struct ListingTitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .foregroundColor(Color.black)
            .font(.subheadline)
    }
}

struct CommonTitleViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.twitterColor)
    }
}

struct CommonTitleBlackViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.black)
    }
}

struct CommonTitleWhiteViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color.white)
    }
}

struct ListingSubTitleModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.gray)
            .font(.footnote)
            .multilineTextAlignment(.leading)
    }
}


struct TextModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .foregroundColor(Color.gray)
            .font(.body)
            .multilineTextAlignment(.leading)
    }
}
