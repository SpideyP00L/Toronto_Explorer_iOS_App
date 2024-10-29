//
//  NavigationButtonDesign.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-29.
//

import SwiftUI

struct CapsuleButtonDesign: View {
    let text: String
    let delay: Double
    var font: Font = .title // default font
    var color: Color = .white // default text color
    var backgroundColor: Color = .blue // default button background color
    var action: () -> Void // Action for the button

    @State private var isVisible = false

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(font)
                .foregroundColor(color)
                .padding()
                .frame(maxWidth: .infinity) // Make the button stretch to full width
                .background(backgroundColor)
                .cornerRadius(25) // Capsule shape
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                .opacity(isVisible ? 1 : 0)
                .onAppear {
                    withAnimation(.easeIn(duration: 1).delay(delay)) {
                        self.isVisible = true
                    }
                }
        }
        .padding(.horizontal) // Add some horizontal padding to the button
    }
}

#Preview {
    CapsuleButtonDesign(text: "Next", delay: 0.5, action: {
        print("Button pressed")
    })
}
