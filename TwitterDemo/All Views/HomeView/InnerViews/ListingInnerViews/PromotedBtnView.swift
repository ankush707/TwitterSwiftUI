//
//  PromotedBtnView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct PromotedBtnView: View {
    
    var size: Double = 16.0
    
    var body: some View {
        Button {
            
        } label: {
            
            CustomImageView(imgName: ConstantImages.bullhorn, width: size, height: size, cornerRadius: 0.0)
            
            Text("Promoted")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
        }
    }
}

struct PromotedBtnView_Previews: PreviewProvider {
    static var previews: some View {
        PromotedBtnView()
    }
}
