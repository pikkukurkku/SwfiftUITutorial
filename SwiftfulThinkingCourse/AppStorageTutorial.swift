//
//  AppStorageTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct AppStorageTutorial: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add name here")
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageTutorial()
}
