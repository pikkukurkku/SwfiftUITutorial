//
//  BadgesTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct BadgesTutorial: View {
    
    
    var body: some View {
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("NEW")
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
    }
}

#Preview {
    BadgesTutorial()
}
