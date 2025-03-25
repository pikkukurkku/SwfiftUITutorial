//
//  NavigationSplitViewTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

// primary use -> iPad, MacOS, VisionOS

struct NavigationSplitViewTutorial: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruits? = nil
    
    
    var body: some View {
        NavigationSplitView (columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue,
            selection: $selectedCategory) {category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        }  content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruits.allCases, id: \.rawValue,
                        selection: $selectedFruit) {fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle("Selected fruit")
            } else {
                Text("Select something")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewTutorial()
}


enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}

enum Fruits: String, CaseIterable {
    case apple, banana, orange
}
