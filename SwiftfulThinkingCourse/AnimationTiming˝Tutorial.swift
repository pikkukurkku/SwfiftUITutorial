//
//  AnimationTiming˝Tutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct AnimationTiming_Tutorial: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 0.4
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.2,
                    blendDuration: 1.0))
        }
    }
}

#Preview {
    AnimationTiming_Tutorial()
}
