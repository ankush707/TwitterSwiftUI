//
//  DetailMiddleView.swift
//  TwitterDemo
//
//  Created by Ankush on 06/03/23.
//

import SwiftUI

struct DetailMiddleView: View {
    var body: some View {
        VStack( spacing: 6.0) {
            GenericView(title: "NAME :", content:
                            Text("Ankush Sharma")
                            .modifier(CommonTitleBlackViewModifier())
            )
            
            GenericView(title: "JOB: ", content: Text("Sr.iOS Developer")
                .font(.title3)
                .foregroundColor(Color.gray))
            
            GenericView(title: "DOB: ", content: Text("1st March, 1993")
                .font(.title3)
                .foregroundColor(Color.gray))
          
        }
    }
}

struct DetailMiddleView_Previews: PreviewProvider {
    static var previews: some View {
        DetailMiddleView()
    }
}
