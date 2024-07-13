//
//  OnBoarding.swift
//  Animated
//
//  Created by Tafadzwa Alexander on 2024/07/13.
//

import SwiftUI
import RiveRuntime

struct OnBoarding: View {
    
    let button = RiveViewModel(fileName: "button")
    @State var buttonStartFont = 30
    
    var body: some View {
        ZStack {
            RiveViewModel(fileName: "shapes").view()
                .ignoresSafeArea()
                .blur(radius: 30)
                .background(
                    Image("Spline")
                        .blur(radius: 50)
                        .offset(x: 200, y: 100)
                )
            button.view()
                .frame(width: 236, height: 64)
                .overlay(
                    Label("Start", systemImage: "arrow.forward")
                        .offset(x: 4, y: 4)
                        .font(.system(size: CGFloat(buttonStartFont)))
                )
                .background(
                    Color(.black)
                        .cornerRadius(30)
                        .blur(radius: 10)
                        .opacity(0.3)
                        .offset(y: 10)
                )
                .onTapGesture {
                    button.play(animationName: "active")
                    buttonStartFont = 24
                }
        }
    }
}

#Preview {
    OnBoarding()
}
