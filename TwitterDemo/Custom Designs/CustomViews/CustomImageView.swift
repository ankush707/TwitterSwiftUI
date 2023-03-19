//
//  CustomImageView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct CustomImageView: View {
    
    var imgName: String
    var width: Double
    var height: Double
    var cornerRadius: Double
    var shouldPresentSheet: Bool = false
    
    var body: some View {
        Image(imgName)
            .resizable()
            .frame(width: width, height: height)
            .cornerRadius(cornerRadius)
            .aspectRatio(contentMode: .fit)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView(imgName: "u1", width: 48.0, height: 48.0, cornerRadius: 24.0)
    }
}


