//
//  EnvironmentObjectTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 21.03.25.
//

import SwiftUI



class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectTutorial: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id:\.self) { item in
                    NavigationLink (
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        }
                    )
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String

    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            NavigationLink(destination: FinalView(),
                           label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                        .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id:\.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}


#Preview {
    EnvironmentObjectTutorial()
   // DetailView(selectedItem: "iPhone")
   // FinalView()
}
