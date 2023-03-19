//
//  TableViewControllerRepresentable.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import Foundation
import SwiftUI


struct TableViewControllerRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        return TableViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        
    }
}
