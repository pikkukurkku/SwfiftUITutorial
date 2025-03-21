//
//  onAppearTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct onAppearTutorial: View {
    
    @State var myText: String = "Start text."
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(
                    deadline: .now() + 5) {  myText = "This is the new text!"
                    }
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear Tutorial")
        }
    }
}

#Preview {
    onAppearTutorial()
}
