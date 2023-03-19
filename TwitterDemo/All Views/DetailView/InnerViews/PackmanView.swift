//
//  PackmanView.swift
//  TwitterDemo
//
//  Created by Ankush on 06/03/23.
//

import SwiftUI

struct PackmanView: View {
    
    @State var showPackman: Bool = false
    
    @State var animatePackman: Bool = false
    
    var body: some View {
        
        HStack {
            Button {
                showPackman.toggle()
            } label: {
                Text("Show Packman")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.all)
                    .background(Color.twitterColor)
            }
            .buttonStyle(CustomButtonStyle())
            .cornerRadius(12.0)
            
            if showPackman {
                //MARK: - PACKMAN View
                Packman(offSetAmount: animatePackman ? 20: 0)
                    .frame(width: 70, height: 70)
                    .onAppear {
                        withAnimation(Animation.easeInOut.repeatForever()) {
                            animatePackman.toggle()
                        }
                    }
            }
        }
        
    }
}

struct PackmanView_Previews: PreviewProvider {
    static var previews: some View {
        PackmanView()
    }
}
