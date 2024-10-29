//
//  AppLandingScreen.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-28.
//

import SwiftUI

struct AppLandingScreen: View {
    var body: some View {
        NavigationView {
            VStack {
                CircleViewDesign(image: Image("App_Logo"), width: 250, height: 250)
                
                FadeInTextAnimationDesign(
                    text: "Toronto Explorer",
                    delay: 0.3,
                    font: .custom("Rockwell", size: 24),
                    color: Color(hex: "#FFCC00"),
                    fontWeight: .bold
                ).padding(.top, 50)
                
                FadeInTextAnimationDesign(
                    text: "Discover the Heart of Toronto",
                    delay: 0.6,
                    font: .custom("Rockwell", size: 24),
                    color: Color(hex: "#FFCC00"),
                    fontWeight: .bold
                )
                
                FadeInTextAnimationDesign(
                    text: "“Explore Toronto’s top tourist destinations, find nearby attractions, and get live directions to all the best spots. Save your favorite places and stay updated on upcoming events.”",
                    delay: 0.9,
                    font: .body,
                    color: Color(hex: "#3498db")
                ).padding(.top, 20)
                
                NavigationLink(destination: UserSignInScreen().navigationBarHidden(true)) {
                    FadeInTextAnimationDesign(
                        text: "Next",
                        delay: 1.2,
                        font: .subheadline,
                        color: .white,
                        fontWeight: .bold
                    )
                    .padding(.horizontal, 50)
                    .padding(.vertical, 10)
                    .background(Color(.blue))
                    .cornerRadius(50)
                    
                }.padding(.top, 20)
            }
            .padding()
        }
    }
}

#Preview {
    AppLandingScreen()
}
