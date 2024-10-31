//
//  UserSignUpScreen.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-31.
//

import SwiftUI

struct UserSignUpScreen: View {
    var body: some View {
        VStack {
            // MARK: - User SignIn Text
            FadeInTextAnimationDesign(
                text: "User SignUp",
                delay: 0.3,
                font: .custom("Rockwell", size: 30),
                color: Color(hex: "#FFCC00"),
                fontWeight: .bold
            )
            
            // MARK: - Divider Design
            DividerDesign(height: 4, color: .black, delay: 0.9)
            
            // MARK: - Welcome Back Text
            FadeInTextAnimationDesign(
                text: "Hello, Register to get started!!",
                delay: 1.2,
                font: .subheadline,
                color: Color(.blue),
                fontWeight: .medium
            )
            .italic()
        }
        .padding()
    }
}

#Preview {
    UserSignUpScreen()
}
