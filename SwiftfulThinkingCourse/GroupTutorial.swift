//
//  GroupTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct GroupTutorial: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.caption)
            .foregroundColor(.green)
        }
        .foregroundColor(.red)
    }
}

#Preview {
    GroupTutorial()
}
