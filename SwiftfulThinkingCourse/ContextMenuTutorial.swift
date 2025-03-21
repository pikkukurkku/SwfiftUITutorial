//
//  ContextMenuTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct ContextMenuTutorial: View {
    
    @State var backgroundColor: Color = .blue
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("how to use Contect Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor)
        .cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: {
                Label("Share post", systemImage: "flame.fill")
            })
            Button(action: {
                backgroundColor = .red
            }, label: {
                Text("Report post")
            })
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
    }
}

#Preview {
    ContextMenuTutorial()
}
