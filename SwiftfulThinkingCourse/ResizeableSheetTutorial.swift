//
//  ResizeableSheetTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct ResizeableSheetTutorial: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .foregroundColor(.black)
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
                //.presentationDetents([.height(125), .medium])
             //   .presentationDragIndicator(.hidden)
            //    .interactiveDismissDisabled()
              //  .presentationDetents([.fraction(0.4)])
        }
     //   .onAppear {
      //      showSheet = true
          //  DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
     //           showSheet = false
          //  }
     //   }
    }
}

struct MyNextView: View  {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.opacity(0.5).ignoresSafeArea()
          
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }
                Button("MEDIUM") {
                    detents = .medium
                }
                Button("600 px") {
                    detents = .height(600)
                }
                Button("LARGE") {
                    detents =  .large
                }
               
            }
        }
        .presentationDetents([.medium, .large, .fraction(0.2), .height(600)],
                             selection: $detents)
        .presentationDragIndicator(.hidden)
    
    }
}
               
               
#Preview {
    ResizeableSheetTutorial()
}
