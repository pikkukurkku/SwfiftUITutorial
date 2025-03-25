//
//  SubmitTextFieldTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct SubmitTextFieldTutorial: View {
    
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .submitLabel(.route)
                .onSubmit {
                    print("console")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.next)
                .onSubmit {
                    print("console")
                }
            TextField("Placeholder...", text: $text)
                .submitLabel(.search)
                .onSubmit {
                    print("console")
                }
        }
    }
}

#Preview {
    SubmitTextFieldTutorial()
}
