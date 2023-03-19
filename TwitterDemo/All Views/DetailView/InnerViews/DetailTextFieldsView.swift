//
//  DetailTextFieldsView.swift
//  TwitterDemo
//
//  Created by Ankush on 06/03/23.
//

import SwiftUI
import UIKit

struct DetailTextFieldsViewModifer: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            
            .font(.headline)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .background(Color.twitterColor)
    }
    
}

struct DetailTextFieldsView: View {
    
    @State var text : String
    
    var body: some View {
        
        VStack(alignment: .center) {
            //Text(text)
            
            HStack {
                Text("UIKIT : ")
                    .frame(width: 100,height: 56)
                    .modifier(DetailTextFieldsViewModifer())
                
                RespesentableTextField(txt: $text)
            }
            .frame(height: 60)
            HStack {
                Text("SWIFT UI : ")
                    .frame(width: 100,height: 56)
                    .modifier(DetailTextFieldsViewModifer())
                TextField("Type Here...", text: $text)
            }
            .frame(height: 60)
            Text("RESULT : \(text)")
                .frame(width: UIScreen.screenWidth - 40,height: 56)
                .modifier(DetailTextFieldsViewModifer())
            Spacer()
        }
        .padding(.all)
    }
}

struct DetailTextFieldsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailTextFieldsView(text: "")
    }
}


struct RespesentableTextField: UIViewRepresentable {
    
    @Binding var txt : String
    
        
    func makeUIView(context: Context) -> UITextField {
    
        let uiTextFld = UITextField(frame: .zero)
        
        uiTextFld.attributedPlaceholder = NSAttributedString(string: "Type Here...", attributes: [.foregroundColor: UIColor.darkGray])
        
        uiTextFld.delegate = context.coordinator
        return uiTextFld
    }
    
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = txt
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(txt: $txt)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var txt : String
        
        init(txt: Binding<String>) {
            self._txt = txt
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            txt = textField.text ?? ""
        }
        
    }
}
