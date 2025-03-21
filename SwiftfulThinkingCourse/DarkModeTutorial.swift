//
//  DarkModeTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct DarkModeTutorial: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is RED")
                        .foregroundColor(.red)
                    Text("This color is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            }
            .navigationTitle("Dark mode tutorial")
        }
    }
}

struct DarkModeTutorial_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeTutorial()
                .preferredColorScheme(.light)
            DarkModeTutorial()
                .preferredColorScheme(.dark)
        }
    }
}

