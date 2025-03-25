//
//  ViewThatFitsTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct ViewThatFitsTutorial: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            
            ViewThatFits (in: .horizontal) {
                Text("This is some text that I would like to display to the user!")
                Text("This is some text that I would like to display!")
                Text("This is some text!")
            }
        }
        .frame(height: 300)
        .padding()
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsTutorial()
}
