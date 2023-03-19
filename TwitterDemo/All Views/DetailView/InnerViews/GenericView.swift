//
//  GenericView.swift
//  TwitterDemo
//
//  Created by Ankush on 06/03/23.
//

import SwiftUI

struct GenericView<CustomType: View>: View {
    var title: String
    let content: CustomType
    
    var body: some View {
        HStack {
            Text(title)
                .modifier(CommonTitleViewModifier())
                .foregroundColor(Color.black)
            content
            
        }
    }
}
