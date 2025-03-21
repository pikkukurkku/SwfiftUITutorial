//
//  swipeActions.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct swipeActions: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach", "cucumber", "mango"
    ]
    
    var body: some View {
            List {
                ForEach(fruits, id: \.self) {
                    Text($0.capitalized)
                        .swipeActions(
                            edge: .trailing,
                            allowsFullSwipe: true) {
                                Button("Archive") {
                                    
                                }
                                .tint(.green)
                                Button("Save") {
                                    
                                }
                                .tint(.blue)
                                Button("Junk") {
                                    
                                }
                                .tint(.black)
                            }
                                .swipeActions(
                                    edge: .leading,
                                    allowsFullSwipe: false) {
                                        Button("Share") {
                                            
                                        }
                                        .tint(.yellow)
                            }
                }
        }
        
      //  func delete(indexSet: IndexSet) {
            
      //  }
    }
}

#Preview {
    swipeActions()
}
