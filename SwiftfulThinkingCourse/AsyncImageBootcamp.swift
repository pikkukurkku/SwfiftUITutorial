//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                              .resizable()
                             .scaledToFit()
                             .frame(width: 200, height: 200)
                             .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default: Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
        
        
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
 
    }
}

#Preview {
    AsyncImageBootcamp()
}
