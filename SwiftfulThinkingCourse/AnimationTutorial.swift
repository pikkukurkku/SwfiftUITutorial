//
//  AnimationTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct AnimationTutorial: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                    isAnimated.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true))
            Spacer()
        }
    }
}

#Preview {
    AnimationTutorial()
}
