//
//  PromotionsView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct PromotionsView: View {
    
    @State var homeObj: Datum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(homeObj.promotedLink ?? "")
                .modifier(ListingSubTitleModifier())
            Text(homeObj.promotedDescription ?? "")
                .modifier(ListingSubTitleModifier())
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                    if let dataObj = homeObj.promoted {
                        ForEach(dataObj , id: \.self) { data in
                            
                            CustomImageView(imgName: data.pImage ?? "", width: 90.0, height: 120.0, cornerRadius: 8.0)
                        }
                    }
                }
            }
            .frame(height: 120.0)
        }
        
    }
}

//struct PromotionsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PromotionsView()
//    }
//}
