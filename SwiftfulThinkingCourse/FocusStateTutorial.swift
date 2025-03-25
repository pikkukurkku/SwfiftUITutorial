//
//  FocusStateTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct FocusStateTutorial: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
 //   @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
 //   @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
              //  .focused($usernameInFocus)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .foregroundColor(.primary)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .foregroundColor(.primary)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
            }
            
//            Button("TOGGLE FOCUS STATE") {
//                usernameInFocus.toggle()
//            }
        }
        .padding(40)
        .background(Color(.systemBackground))
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
//                self.usernameInFocus = true
//            }
//        }
    }
}

#Preview {
    FocusStateTutorial()
}
