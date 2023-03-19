//
//  TriangleView.swift
//  TwitterDemo
//
//  Created by Ankush on 06/03/23.
//

import SwiftUI

struct TriangleView: View {
    @State var showTriangle: Bool = false
    
    var body: some View {
        //Shapes
        HStack {
            Button {
                showTriangle.toggle()
            } label: {
                Text("Show Triangle")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color.twitterColor)
            }
            .buttonStyle(CustomButtonStyle())
            .cornerRadius(12.0)
            
            if showTriangle {
                Triangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .bottom, endPoint: .top))
                    .frame(width: 100, height: 100)
                    .transition(AnyTransition.rotating.animation(.easeIn))
                
            }
        }
    }
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
