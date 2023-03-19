//
//  FragmentView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct FragmentView: View {
    let categories = ["For you", "Following"]
    @State private var selected: String = "For you"
    @Namespace private var nameSpace
    
    
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                
                ForEach(categories, id: \.self) { category in
                    ZStack{
                        if selected == category {
                            Button {
                                
                            } label: {
                                Rectangle()
                                    .fill(.cyan)
                                    .matchedGeometryEffect(id: "cat", in: nameSpace)
                                    .frame(width: 60, height: 3)
                                    .offset(y: 24)
                            }

                                
                        }
                        Text(category)
                            .modifier(ListingTitleModifier())
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .onTapGesture {
                        withAnimation {
                            selected = category
                        }
                    }
                }
            }//Outer HSTACK
            .background(Color.gray.opacity(0.08))
            Color.gray
                .frame(height: 0.6)
        }//Outer V Stack
        
    }
}

struct FragmentView_Previews: PreviewProvider {
    static var previews: some View {
        FragmentView()
    }
}
