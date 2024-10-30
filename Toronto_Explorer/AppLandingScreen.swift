//
//  AppLandingScreen.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-28.
//

import SwiftUI

struct AppLandingScreen: View {
    @State private var islogoVisible = false // State for CircleViewDesign
    @State private var isVisible = false // State for Navigation Link
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: - Background Image
                Image("Toronto_Skyline_Vertical")
                    .resizable()
                    .scaledToFill()
                    .overlay(Color.black.opacity(0.4)) // Darken the image
                    .ignoresSafeArea() // Ensure it covers the full screen
                
                // MARK: - Foreground Content
                VStack {
                    // MARK: - Circle View Logo Image with animation
                    CircleViewDesign(image: Image("App_Logo"), width: 250, height: 250)
                        .opacity(islogoVisible ? 1 : 0)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1).delay(0.3)) {
                                self.islogoVisible = true
                            }
                        }
                    
                    // MARK: - Application Name with Animation
                    FadeInTextAnimationDesign(
                        text: "Toronto Explorer",
                        delay: 0.6,
                        font: .custom("Rockwell", size: 24),
                        color: Color(hex: "#FFCC00"),
                        fontWeight: .bold
                    ).padding(.top, 50)
                    
                    // MARK: - Catchphrase of the app with animation
                    FadeInTextAnimationDesign(
                        text: "Discover the Heart of Toronto",
                        delay: 0.9,
                        font: .custom("Rockwell", size: 24),
                        color: Color(hex: "#FFCC00"),
                        fontWeight: .bold
                    )
                    
                    // MARK: - Short Description of the app with animation
                    FadeInTextAnimationDesign(
                        text: "“Explore Toronto’s top tourist destinations, find nearby attractions, and get live directions to all the best spots. Save your favorite places and stay updated on upcoming events.”",
                        delay: 1.2,
                        font: .body,
                        color: .white
                    )
                    .padding(.top, 20)
                    .padding(.horizontal, 120)
                    
                    //MARK: - Navigation Link to UserSignIn Screen with animation
                    NavigationLink(destination: UserSignInScreen().navigationBarHidden(true)) {
                        FadeInTextAnimationDesign(
                            text: "Next",
                            delay: 1.5,
                            font: .subheadline,
                            color: .white,
                            fontWeight: .bold
                        )
                        .padding(.horizontal, 60)
                        .padding(.vertical, 15)
                        .background(Color(.blue))
                        .cornerRadius(50)
                        
                    }
                    .padding(.top, 20)
                    .opacity(isVisible ? 1 : 0)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1).delay(1.5)) {
                            self.isVisible = true
                        }
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    AppLandingScreen()
}
