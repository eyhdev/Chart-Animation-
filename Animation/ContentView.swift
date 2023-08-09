//
//  ContentView.swift
//  Animation
//
//  Created by eyh.mac on 8.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isShowing = false
    var body: some View {
        ZStack{
            Color("color")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack(spacing: 20){
                    A(value: isShowing ? 200 : 50)
                    A(value: isShowing ? 250 : 150)
                    A(value: isShowing ? 300 : 100)
                    A(value: isShowing ? 200 : 50)
                    A(value: isShowing ? 200 : 250)
                    A(value: isShowing ? 200 : 150)
                    A(value: isShowing ? 200 :250)
                    A(value: isShowing ? 200 : 50)
                }.padding(.top, -10)
                    .offset(y: -100)
                    .animation(Animation.linear(duration: 1).repeatForever())
                    .onTapGesture { self.isShowing.toggle()
                        
                    }
            }
        }
    }
    
    struct A: View{
        
        var value: CGFloat = 0
        
        var body: some View{
            VStack{
                ZStack(alignment: .bottom){
                    Capsule().frame(width: 25, height: 300)
                        .foregroundColor(Color.white)
                    Capsule().frame(width: 25, height: value)
                        .foregroundColor(Color.orange)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
