//
//  SplashView.swift
//  SwiftUIDemo
//
//  Created by Ankush on 13/02/23.
//

import SwiftUI

struct SplashView: View {
    
    let timer = Timer.publish(every: 0.3, on: .main, in: .common).autoconnect()
    @State var timerTime : Float
    @State var minute: Float = 0.0
    @State var move: Bool = false
    
    @State var showAnimation: Bool = false
    
    var body: some View {
        
      
        NavigationView {
            
            NavigationLink(destination: HomeView(), isActive: $move) {
                
                Image(ConstantImages.twitterBlue)
                    .resizable()
                    .frame(width: showAnimation ? 300 : 100, height: showAnimation ? 350 : 100)
                    .ignoresSafeArea()
                    .aspectRatio(contentMode: .fill)
                    
                    
            }
            .onReceive(timer) { _ in
                if self.minute > self.timerTime {
                    if self.minute > (self.timerTime + 0.2) {
                        
                        self.timer.upstream.connect().cancel()
                        self.move.toggle()
                        print("Timer Finished")
                        
                    } else {
                        print("Show animation Finished")
                        withAnimation {
                            showAnimation.toggle()
                        }
                    }
                    self.minute += 0.2
                }else {
                    self.minute += 0.2
                }
            }
        }
        
        
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(timerTime: 1.0)
    }
}
