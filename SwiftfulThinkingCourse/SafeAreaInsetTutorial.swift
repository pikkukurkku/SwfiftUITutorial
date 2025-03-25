//
//  SafeAreaInsetTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct SafeAreaInsetTutorial: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
                .navigationTitle("Safe Area Insets")
                .navigationBarTitleDisplayMode(.inline)
//                .overlay(
//                    Text("Hi")
//                        .frame(maxWidth: .infinity)
//                        .background(Color.yellow), alignment: .bottom
//                )
                .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                    Text("Hi")
                        .frame(maxWidth: .infinity)
                      //  .padding()
                        .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                     //   .clipShape(Circle())
                    //    .padding()
                    
                }
        }
    }
}

#Preview {
    SafeAreaInsetTutorial()
}
