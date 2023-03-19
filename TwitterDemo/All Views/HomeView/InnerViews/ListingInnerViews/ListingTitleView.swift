//
//  ListingTitleView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI


struct ListingTitleView: View {
    
    @State var homeObj: Datum
    @State var isFormClicked: Bool = false
    @State var shouldPresentSheet: Bool = false
    
    var body: some View {
        
        if self.isFormClicked {
            Form {
                Text("Not Interested in this Tweet")
                Text("Follow @\(homeObj.userName ?? "")")
                Text("Add to Twitter Circle")
                Text("Mute @\(homeObj.userName ?? "")")
                Text("Block @\(homeObj.userName ?? "")")
                Text("Report Tweet")
            }
        }
        VStack {
            
            HStack(alignment: .top) {
                VStack {
                    CustomImageView(imgName: homeObj.userImage ?? "", width: 48.0, height: 48.0, cornerRadius: 24.0)
                    
                    if self.homeObj.isPromoted == false {
                        Color.gray
                            .frame(width: 0.6)
                        
                        HStack(spacing: 0.0) {
                            CustomImageView(imgName: homeObj.userImage ?? "", width: 40.0, height: 40.0, cornerRadius: 20.0)
                            
                        }
                        .padding(.bottom, 12.0)
                    }
                    
                }
                
                VStack(alignment: .leading, spacing: 8.0) {
                    
                    HStack(spacing: 8.0) {
                        Text(homeObj.userFullName ?? "")
                            .modifier(ListingTitleModifier())
                        
                        if homeObj.isVerified ?? false {
                            CustomImageView(imgName: ConstantImages.verify, width: 24.0, height: 24.0, cornerRadius: 0.0)
                        }
                        
                        
                        Spacer()
                        
                        Text(homeObj.userName ?? "")
                            .modifier(ListingSubTitleModifier())
                        
                        Text(homeObj.postedTime ?? "")
                            .modifier(ListingSubTitleModifier())
                        
                        CustomImageView(imgName: ConstantImages.option, width: 30.0, height: 30.0, cornerRadius: 0.0)
                            .onTapGesture {
                                self.isFormClicked.toggle()
                            }
                    }
                    
                    HStack {
                        Text(homeObj.discription ?? "")
                            .modifier(ListingSubTitleModifier())
                    }
                    
                    if homeObj.postedImage?.count ?? 0 > 0 {
                        Image(homeObj.postedImage?.first?.pImage ?? "")
                            .resizable()
                            .frame(height: 200.0)
                            .cornerRadius(8.0)
                            .padding(.top)
                            .onTapGesture {
                                shouldPresentSheet.toggle()
                            }
                            .sheet(isPresented: $shouldPresentSheet) {
                                print("Sheet dismissed!")
                            } content: {
                                FullScreenImageView(imageName: homeObj.postedImage?.first?.pImage ?? "")
                            }
                    }
                    
                    
                    if self.homeObj.isPromoted == false {
                        Text("Views \(homeObj.views ?? "")")
                            .modifier(TextModifier())
                            .padding(.top)
                    }
                    if self.homeObj.isPromoted ?? false {
                        PromotionsView(homeObj: self.homeObj)
                    }
                    
                    ListingShareView(homeObj: self.homeObj)
                        .padding(.vertical)
                    
                    if self.homeObj.isPromoted ?? false {
                        PromotedBtnView()
                    }
                    
                }//Inner V STACK
                .padding(.all, 0.0)
                .padding(.trailing)
            }//Outer HStack
            .padding(.horizontal, 0.0)
            .padding(.vertical, 6.0)
            
        }//Outer V Stack
        
    }//Body
}

//struct ListingTitleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListingTitleView(homeObj: <#Datum#>)
//    }
//}
