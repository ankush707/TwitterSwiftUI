//
//  FullScreenImageView.swift
//  TwitterDemo
//
//  Created by Ankush on 02/03/23.
//

import SwiftUI

struct FullScreenImageView: View {
    
    @State var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio( contentMode: .fit)
            .frame(width: UIScreen.screenWidth)
    }
}

struct FullScreenImageView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenImageView(imageName: "post1")
    }
}
