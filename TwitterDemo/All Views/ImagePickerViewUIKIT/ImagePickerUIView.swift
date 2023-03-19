//
//  ImagePickerUIView.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import SwiftUI

struct ImagePickerUIView: View {
    
    @Environment(\.presentationMode) var presentedMode
    
    @State var openImagePicker: Bool = false
    
    @State var image : UIImage? = UIImage(named: ConstantImages.my)
    
    var body: some View {
        NavigationView {
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
                    
                }
                .frame(height: 50.0)
                .padding(.horizontal)

                Image(uiImage: image!)
                    .resizable()
                    .frame(width: 150, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
                    .padding(.bottom, 44.0)
                
                Button {
                    openImagePicker.toggle()
                } label: {
                
                    Text("Open Image Picker")
                        .modifier(CommonTitleWhiteViewModifier())
                }
                .padding(.all)
                .background(Color.twitterColor)
                .cornerRadius(16.0)
                .sheet(isPresented: $openImagePicker) {
                    ImagePickerViewControllerRepresentable(image: $image, showScreen: $openImagePicker)
                }
                
                
                Spacer()
            }
        }//NavigationView
        .navigationBarHidden(true)
    }//Body
}

struct ImagePickerUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerUIView()
    }
}


