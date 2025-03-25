//
//  ToolbarTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct ToolbarTutorial: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
         
            ZStack {
          
            Color.indigo.ignoresSafeArea()
                ScrollView {
                    
                    //VStack {
            //            Spacer()
                        Text("Hey 🤩!")
                            .foregroundColor(.black)
              //          Spacer()
                //        Spacer()
                   // }
                  //  .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height)
                }
            }
          //  Spacer()
            .navigationTitle("Natalia")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                        .frame(maxWidth: .infinity)
                }
            }
    //        .frame(width: .infinity, height: 55, alignment: .bottom)
    //        .background(Color.white)
    //        .toolbar(.hidden)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
   
    
    }
}

#Preview {
    ToolbarTutorial()
}
