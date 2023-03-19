//
//  LabelViewRepresentable.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import Foundation
import SwiftUI

struct LabelViewRepresentable: UIViewRepresentable {
   
    let str: String
    
    func makeUIView(context: Context) -> some UIView {
        return customLabel()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    private func customLabel() -> UILabel {
        let customLbl = UILabel(frame: .zero)
        customLbl.text = str
        customLbl.textColor = .white
        customLbl.backgroundColor = .red
        return customLbl
    }
}

