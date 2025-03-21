//
//  forEach.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 14.03.25.
//

import SwiftUI

struct forEach: View {
    
    let data: [String] = ["Hi", "Hello", "Howdy"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<100) { index in
                Circle()
                    .frame(height: 50)
            }
        }
    }
}

#Preview {
    forEach()
}
