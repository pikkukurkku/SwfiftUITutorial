//
//  ShapesBootcamp.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 14.03.25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
       // Circle()
        //Ellipse()
       // Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 20)
            //.fill(Color.blue)
            //.foregroundColor(.pink)
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth:30)
         
           //.trim(from: 0.2, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
     
            .frame(width: 200, height: 100)
    }
}

#Preview {
    ShapesBootcamp()
}
