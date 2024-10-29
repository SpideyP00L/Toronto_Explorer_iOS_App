//
//  ContentView.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-28.
//

import SwiftUI

struct ContentView: View {
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            Color(.white)
            
            if isHomeRootScreen {
                AppLandingScreen()
            } else {
                Image("Maple_Leaf")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scaleAmount)
                    .frame(width: 80)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            // MARK: - Shrink the icon
            withAnimation(.easeOut(duration: 0.5)) {
                scaleAmount = 0.6
            }
            
            // MARK: - Enlarge the logo
            withAnimation(.easeInOut(duration: 1).delay(0.5)) {
                scaleAmount = 80
            }
            
            // MARK: - Do somehing after the animation is done
            DispatchQueue.main.asyncAfter(deadline: .now() + 1){
                isHomeRootScreen = true
            }
        }
    }
}

#Preview {
    ContentView()
}
