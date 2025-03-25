//
//  PopoverModifierTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct PopoverModifierTutorial: View {
    
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Average 😐",
        "Very bad 😖"
    ]
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
             
                
                Button("Provide feedback") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                    VStack(alignment: .leading, spacing: 12, content: {
                        ForEach(feedbackOptions, id: \.self) { option in
                            Button(option) {
                                
                            }
                            .padding(.vertical, 2)
                            
                            if option != feedbackOptions.last {
                                Divider()
                            }
                        }
                    })
                 
                }
                    .padding(20)
              //      .frame(width: 200, height: 250) // 👈 Sets a fixed size for the popover
                     
                    .presentationCompactAdaptation(horizontal: .popover, vertical: .popover)
                })

            }
        }
    }
}

#Preview {
    PopoverModifierTutorial()
}
