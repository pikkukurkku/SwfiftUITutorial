//
//  AlertsTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 18.03.25.
//

import SwiftUI

struct AlertsTutorial: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow

    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                // Alert(title: Text("There was an error"))
                getAlert()
            })
        }
    }
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("Video successfully uploaded!"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        case .error:
            return Alert(title: Text("ERROR UPLOADING VIDEO"))
        default:
            return Alert(title: Text("something went wrong"))
        }
    }
}

#Preview {
    AlertsTutorial()
}
