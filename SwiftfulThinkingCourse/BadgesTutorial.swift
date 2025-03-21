//
//  BadgesTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct BadgesTutorial: View {
    
    
    var body: some View {
        List {
            Text("Hello world")
                .badge(4)
            Text("Hello world")
            Text("Hello world")
        }
    }
}

#Preview {
    BadgesTutorial()
}
