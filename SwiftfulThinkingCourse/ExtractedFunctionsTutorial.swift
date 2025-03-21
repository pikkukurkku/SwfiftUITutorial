//
//  ExtractedFunctionsTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct ExtractedFunctionsTutorial: View {
    
    @State private var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
                
            })
        }
    }
    
    func buttonPressed(){
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsTutorial()
}
