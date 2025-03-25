//
//  NavigationStackTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct NavigationStackTutorial: View {
    
    @State private var stackPath: [String] = []
    
    let fruits = ["Apple", "Orange", "Banana"]
    
    var body: some View {
        NavigationStack(path: $stackPath) {
       // NavigationStack {
            ScrollView {
                VStack(spacing: 40) {
                    
                    Button("Super segue!") {
                        stackPath.append(contentsOf: [
                          "Coconut", "Watermelon", "Mango"
                        ])
                    }
                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me \(x)")
                        }
       
                    }
                }
            }
            .navigationTitle(("Nav bootcamp"))
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("ANOTHER SCREEN: \(value)")
            }
        }
    }
}
    
    struct MySecondScreen: View {
        let value: Int
        init(value: Int) {
                self.value = value
            print("INIT SCREEN: \(value)")
        }
        
        var body: some View {
            Text("Screen \(value)")
        }
    }

#Preview {
    NavigationStackTutorial()
   // MySecondScreen(value: value)
}
