//
//  StepperTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct StepperTutorial: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)",
                    value: $stepperValue)
            .padding(50)
        
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 100 + widthIncrement, height: 100)
        
        Stepper("Stepper 2") {
            incrementWidht(amount: 10)
        }  onDecrement: {
            incrementWidht(amount: -100)
        }
    }
    }
    func incrementWidht(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
    }
    
}

#Preview {
    StepperTutorial()
}
