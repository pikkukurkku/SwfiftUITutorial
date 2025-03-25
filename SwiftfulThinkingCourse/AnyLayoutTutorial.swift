//
//  AnyLayoutTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 24.03.25.
//

import SwiftUI

struct AnyLayoutTutorial: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 12 ){
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(horizontalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSizeClass == .compact {
//                
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutTutorial()
}
