//
//  DetailView.swift
//  TwitterDemo
//
//  Created by Ankush on 03/03/23.
//

import SwiftUI



struct DetailView: View {
    
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                //MARK: - Top View
                HStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "arrowshape.backward.fill")
                            .resizable()
                            .frame(width: 36, height: 28)
                            .foregroundColor(Color.twitterColor)
                    }
                    
                    Text("Home View")
                        .font(.title2)
                        .foregroundColor(Color.gray)
                    Spacer()
                    
                }//H STACK
                .frame(height: 50.0)
                .padding(.horizontal)
                
                HStack(alignment: .center) {
                    
                    //MARK: - Profile Image View
                    NavigationLink {
                        UIKitExamplesView()
                    } label: {
                        Image(ConstantImages.my)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(100)
                    }
                    
                    
                    
                }
                
                
                //MARK: - Middle View
                DetailMiddleView()
                    .padding(.bottom)
                //MARK: - Triangle View
                PackmanView()
                //MARK: - Triangle View
                TriangleView()
                
                //MARK: - UIRepresentableView
                DetailTextFieldsView(text: "")
                Spacer()
                
            }//V STACK
            .frame(width: UIScreen.screenWidth)
            .padding(.all)
        }//NavigationView
    }//Body
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}


