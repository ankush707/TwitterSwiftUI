//
//  ListingShareView.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import SwiftUI

struct ListingShareView: View {
    
    @State var homeObj: Datum
    @State var isMessageClicked: Bool = false
    @State var isRetweetClicked: Bool = false
    @State var isLikeClicked: Bool = false
    @State var isBarClicked: Bool = false
    
    let size = 24.0
    
    var body: some View {
        HStack {
            HStack {
                if isMessageClicked {
                    CustomImageView(imgName: ConstantImages.messageRed, width: size, height: size, cornerRadius: 0.0)
                        .onTapGesture {
                            isMessageClicked.toggle()
                        }
                } else {
                    CustomImageView(imgName: ConstantImages.message, width: size, height: size, cornerRadius: 0.0)
                        .onTapGesture {
                            isMessageClicked.toggle()
                        }
                }
                
                
                Text(self.homeObj.innerDetails?.comments ?? "")
                    .modifier(ListingSubTitleModifier())
            }
            
            HStack {
                if isRetweetClicked {
                    CustomImageView(imgName: ConstantImages.retweetRed, width: size, height: size, cornerRadius: 0.0)
                        .onTapGesture {
                            isRetweetClicked.toggle()
                        }
                } else {
                    CustomImageView(imgName: ConstantImages.retweet, width: size, height: size, cornerRadius: 0.0)
                        .onTapGesture {
                            isRetweetClicked.toggle()
                        }
                }
                
                
                Text(self.homeObj.innerDetails?.retweets ?? "")
                    .modifier(ListingSubTitleModifier())
            }
            
            HStack {
                if isLikeClicked {
                    CustomImageView(imgName: ConstantImages.heartRed, width: size - 4, height: size - 4, cornerRadius: 0.0)
                        .onTapGesture {
                            isLikeClicked.toggle()
                        }
                } else {
                    CustomImageView(imgName: ConstantImages.heart, width: size - 4, height: size - 4, cornerRadius: 0.0)
                        .onTapGesture {
                            isLikeClicked.toggle()
                        }
                }
                
                
                Text(self.homeObj.innerDetails?.likes ?? "")
                    .modifier(ListingSubTitleModifier())
            }
            
            HStack {
                if isBarClicked {
                    CustomImageView(imgName: ConstantImages.barRed, width: size - 4, height: size - 4, cornerRadius: 0.0)
                        .onTapGesture {
                            isBarClicked.toggle()
                        }
                } else {
                    CustomImageView(imgName: ConstantImages.bar, width: size - 4, height: size - 4, cornerRadius: 0.0)
                        .onTapGesture {
                            isBarClicked.toggle()
                        }
                }
               
                Text(self.homeObj.innerDetails?.trending ?? "")
                    .modifier(ListingSubTitleModifier())
            }
            
            HStack {
                Button(action: actionSheet) {
                    CustomImageView(imgName: ConstantImages.upload, width: size - 4, height: size - 4, cornerRadius: 0.0)
                }
            }
        }
    }
    
    func actionSheet() {
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

//struct ListingShareView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListingShareView(homeObj: <#Datum#>)
//    }
//}
