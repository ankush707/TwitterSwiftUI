//
//  UIKitExamplesView.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import SwiftUI

struct UIKitExamplesView: View {
    
    @Environment(\.presentationMode) var presentedMode
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center) {
                
                //MARK: - Top View
                VStack {
                    HStack {
                        Button {
                            presentedMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrowshape.backward.fill")
                                .resizable()
                                .frame(width: 36, height: 28)
                                .foregroundColor(Color.twitterColor)
                        }
                        
                        Text("Detail View")
                            .font(.title2)
                            .foregroundColor(Color.gray)
                        Spacer()
                        
                    }//H STACK
                    .frame(height: 50.0)
                    .padding(.horizontal)
                    
                    //MARK: - Profile Image View
                    NavigationLink {
                        ImagePickerUIView()
                    } label: {
                        Image(ConstantImages.my)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(100)
                    }
                    
                }//V STACK
                
                
                
                
                //MARK: UITableView Controller
                TableViewControllerRepresentable()
                
                
                
                Spacer()
            }//OUTER V STACK
            
        }//NavigationView
        .navigationBarHidden(true)
    }//Body
}

struct UIKitExamplesView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitExamplesView()
    }
}


