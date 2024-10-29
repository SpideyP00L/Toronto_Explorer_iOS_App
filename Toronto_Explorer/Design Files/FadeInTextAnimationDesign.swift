//
//  FadeInTextAnimationDesign.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-28.
//

import SwiftUI

struct FadeInTextAnimationDesign: View {
    let text: String
    let delay: Double
    var font: Font = .title // default font
    var color: Color = .primary // default color
    var fontWeight: Font.Weight = .regular // default font weight
    var alignment: TextAlignment = .center // Default alignment

    @State private var isVisible = false

    var body: some View {
        Text(text)
            .font(font)
            .foregroundColor(color)
            .fontWeight(fontWeight)
            .multilineTextAlignment(alignment)
            .opacity(isVisible ? 1 : 0)
            .onAppear {
                withAnimation(.easeIn(duration: 1).delay(delay)) {
                    self.isVisible = true
                }
            }
    }
}


#Preview {
    FadeInTextAnimationDesign(text: "Sample Text", delay: 0.5)
}
