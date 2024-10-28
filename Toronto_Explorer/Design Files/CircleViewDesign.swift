//
//  CircleViewDesign.swift
//  Toronto_Explorer
//
//  Created by Jeet Panchal on 2024-10-28.
//

import SwiftUI

struct CircleViewDesign: View {
    var image: Image
    var width: CGFloat
    var height: CGFloat
    
    
    var body: some View {
        image
            .resizable()
            .scaledToFill()
            .frame(width: width, height: height)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleViewDesign(image: Image("App_Logo"), width: 300, height: 300)
}
