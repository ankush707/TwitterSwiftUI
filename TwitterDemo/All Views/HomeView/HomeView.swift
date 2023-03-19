//
//  HomeView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModelObj: APIRequestViewModel = APIRequestViewModel()
    @State var willMoveToNextScreen: Bool = false
    
    
    var body: some View {
       
        VStack(spacing: 0.0) {
            
            //MARK: - Header view
            HeaderView(imgName: viewModelObj.homeObj?.data?.first?.userImage ?? "u1")
                .onTapGesture {
                    willMoveToNextScreen.toggle()
                }
            //MARK: - Scroll view
                ScrollView(.vertical, showsIndicators: false) {
                    
                    //MARK: - Segment control view
                    FragmentView()
                        .padding(.bottom, 4.0)
                    
                    //MARK: - Items view
                    LazyVStack {
                        if viewModelObj.isLoading {
                            ProgressView()
                        } else {
                            if let dataObj = viewModelObj.homeObj?.data {
                                ForEach(dataObj , id: \.self) { data in
                                    ListingView(homeObj: data)
                                        .frame(width: UIScreen.screenWidth)
                                        .padding(.all)
                                        
                                        .onTapGesture {
                                            willMoveToNextScreen.toggle()
                                        }
                                }
                            }
                        }
                    }
                    
                }//Scroll View
                
            }//Outer zv stack
        .navigate(to: DetailView(), when: $willMoveToNextScreen)
        .navigationBarHidden(true)
    }//Body
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
