//
//  ModelTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelTutorial: View {
    
    @State var users: [UserModel] = //["Natalia", "emily2", "Chris", "pupi"]
    [
        UserModel(displayName: "Nick",
              userName: "nick123",
                  followerCount: 100, isVerified: true),
        UserModel(displayName: "Samantha",
              userName: "ninja",
                  followerCount: 355, isVerified: false),
        UserModel(displayName: "Emily",
              userName: "itsem112",
                  followerCount: 55, isVerified: false),
        UserModel(displayName: "Chris",
              userName: "chrish2009",
                  followerCount: 8000, isVerified: true),
        ]
    
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack (alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                      
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelTutorial()
}
