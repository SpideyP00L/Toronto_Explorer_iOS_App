//
//  UserSignInScreen.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-29.
//

import SwiftUI

struct UserSignInScreen: View {
    
    var body: some View {
        VStack {
            
            // MARK: - User SignIn Text
            FadeInTextAnimationDesign(
                text: "User SignIn",
                delay: 0.3,
                font: .custom("Rockwell", size: 30),
                color: Color(hex: "#FFCC00"),
                fontWeight: .bold
            )
            
            // MARK: - Divider Design
            DividerDesign(height: 4, color: .black, delay: 0.9)
            
            // MARK: - Welcome Back Text
            FadeInTextAnimationDesign(
                text: "Welcome Back! Glad to see you again.",
                delay: 1.2,
                font: .subheadline,
                color: Color(.blue),
                fontWeight: .bold
            )
            .italic()
        }
        .padding()
    }
}

#Preview {
    UserSignInScreen()
}
