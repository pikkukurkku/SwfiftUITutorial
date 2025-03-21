//
//  ExtractSubviews.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 17.03.25.
//

import SwiftUI

struct ExtractSubviews: View {
    var body: some View {
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
           contentLayer
        }
    }
}


var contentLayer: some View {
    HStack {
        MyItem(title: "Apples", count: 1, color: .pink)
        MyItem(title: "Oranges", count: 10, color: .orange)
        MyItem(title: "Bananas", count: 34, color: .yellow)
    }
}
#Preview {
    ExtractSubviews()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
