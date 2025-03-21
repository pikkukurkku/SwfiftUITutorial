//
//  TabViewCarousel.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct TabViewCarousel: View {
    
    let icons: [String] = ["heart.fill", "globe", "house.fill","person.fill"]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            
            RadialGradient(gradient: Gradient(colors: [Color.orange, Color.red]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    TabViewCarousel()
}
