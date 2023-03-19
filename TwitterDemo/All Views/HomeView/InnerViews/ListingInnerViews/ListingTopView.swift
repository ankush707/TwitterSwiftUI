//
//  ListingTopView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI



struct ListingTopView: View {
    
    @State var title: String
    @State var isAlertClicked: Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .foregroundColor(.gray)
                .frame(width: 17.0, height: 20.0)
            
            Text(title)
                .modifier(TextModifier())
            
            Spacer()
            
            
            CustomImageView(imgName: ConstantImages.cancel, width: 20.0, height: 20.0, cornerRadius: 0.0)
                .onTapGesture {
                    isAlertClicked.toggle()
                }
                .alert(isPresented: $isAlertClicked) {
                    
                    Alert(title: Text("Close button is clicked."))
                    
                }
        }
        .padding(.leading, 38.0)
        .padding(.trailing)
    }
}

struct ListingTopView_Previews: PreviewProvider {
    static var previews: some View {
        ListingTopView(title: "Naren and Narendra Modi follow")
    }
}
