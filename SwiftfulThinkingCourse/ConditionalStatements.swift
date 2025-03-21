//
//  ConditionalStatements.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct ConditionalStatements: View {
    
    @State var showCircle: Bool = false
    @State var showRectange: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            if isLoading {
                ProgressView()
            }
            
          Spacer()
        }
    }
}

#Preview {
    ConditionalStatements()
}
