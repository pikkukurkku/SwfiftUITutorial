//
//  TernaryOperatorsTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct TernaryOperatorsTutorial: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "starting state" : "ENDING STATE")
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: 100)
            Spacer()
        }
    }
}

#Preview {
    TernaryOperatorsTutorial()
}
