//
//  BackgroundMaterialsTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct BackgroundMaterialsTutorial: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("IMG_3416")
        )
    }
}

#Preview {
    BackgroundMaterialsTutorial()
}
