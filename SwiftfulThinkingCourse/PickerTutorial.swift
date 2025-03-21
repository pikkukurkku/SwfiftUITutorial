//
//  PickerTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct PickerTutorial: View {
    
    @State var selection: String = "1"
    
    var body: some View {
        
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                Text("1").tag("1")
                Text("2").tag("2")
            })
        .pickerStyle(MenuPickerStyle())
        
//        VStack {
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)").tag("\(number)")
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
//        }
    }
}

#Preview {
    PickerTutorial()
}
