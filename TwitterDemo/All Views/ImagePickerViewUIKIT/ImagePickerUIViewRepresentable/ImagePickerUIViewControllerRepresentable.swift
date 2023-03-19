//
//  ImagePickerViewControllerRepresentable.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import Foundation
import SwiftUI

struct ImagePickerViewControllerRepresentable: UIViewControllerRepresentable {
    
    @Binding var image: UIImage?
    
    @Binding var showScreen: Bool
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = context.coordinator
        return imagePicker
        
    }
    
    func makeCoordinator() -> Coordinator {
        
        
        return Coordinator(image: $image, showScreen: $showScreen)
    }
    
    class Coordinator : NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        @Binding var selectedImage: UIImage?
        @Binding var showScreen: Bool
        
        init(image: Binding<UIImage?>, showScreen: Binding<Bool>) {
            self._selectedImage = image
            self._showScreen = showScreen
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            guard let image = info[.originalImage] as? UIImage else {
                return
            }
            
            self.selectedImage = image
            self.showScreen = false
        }
    }
}
