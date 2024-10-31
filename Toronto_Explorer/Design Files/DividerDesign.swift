//
//  DividerDesign.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-30.
//

import SwiftUI

struct DividerDesign: View {
    let height: CGFloat // Rectangle thickness
    let color: Color // Rectangle color
    let delay: Double // Animation delay
    
    @State private var isVisible = false
    
    var body: some View {
        Rectangle()
            .frame(height: height)
            .foregroundColor(color)
            .opacity(isVisible ? 1 : 0)
            .onAppear {
                withAnimation(.easeInOut(duration: 1).delay(delay)) {
                    self.isVisible = true
                }
            }
            .padding(.horizontal)
    }
}

#Preview {
    DividerDesign(height: 4, color: .black, delay: 0.5)
}
