//
//  HeaderView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI



struct HeaderView: View {
    
    @State var imgName: String
    @State var isAlertClicked: Bool = false
    
    let size: CGFloat = 36
    
    var body: some View {
        
        
        ZStack {
            HStack {
                
                if !isAlertClicked {
                    CustomImageView(imgName: ConstantImages.my, width: size, height: size, cornerRadius: size/2)
                        
                } else {
                    CustomImageView(imgName: ConstantImages.my, width: size, height: size, cornerRadius: size/2)
                        .transition(AnyTransition.rotating.animation(.easeInOut))
                    
                }
                
                    
                Spacer()
                Spacer()
            }
            HStack {
                Spacer()
                
                Button {
                    isAlertClicked.toggle()
                } label: {
                    CustomImageView(imgName: ConstantImages.twitterBlue, width: size, height: size, cornerRadius: 0.0)
                }
                .buttonStyle(CustomButtonStyle())
                
                Spacer()
            }
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 4.0)
        .background(Color.gray.opacity(0.08))
        
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(imgName: "u1")
    }
}
