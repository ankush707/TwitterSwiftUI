//
//  ListingView.swift
//  SwiftUIDemo
//
//  Created by Ankush on 13/02/23.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ListingView: View {
    
    @State var homeObj: Datum
    
    var body: some View {
        VStack {
            if homeObj.showFollowedBy ?? false {
                ListingTopView(title: homeObj.followedBy ?? "")
            }
            
            ListingTitleView(homeObj: self.homeObj)
            Color.gray
                .frame(height: 0.4)
        }
        .padding(.all, 4.0)
    }
}

//struct ListingView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListingView(homeObj: (newAnkObj.homeObj?.data?.first)!)
//    }
//}
