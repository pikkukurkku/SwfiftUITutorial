//
//  buttonStyles.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct buttonStyles: View {
    var body: some View {
        VStack {
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
     //       .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.circle)
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
      //      .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
    //       .buttonStyle(.automatic)
            .buttonStyle(.borderedProminent)
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
     //       .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    buttonStyles()
}
