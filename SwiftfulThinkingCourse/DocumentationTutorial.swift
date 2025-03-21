//
//  DocumentationTutorial.swift
//  SwiftfulThinkingCourse
//
//  Created by Natalia Ogorek on 20.03.25.
//

import SwiftUI

struct DocumentationTutorial: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["apples", "oranges", "bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    /*
     NATALIA
     Working copy - things to do:
     1) Fix title
     2) Correct errors
     3) Formatting
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                // foreground
                foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("ALERT",action: {
                    showAlert.toggle()
                }))
                .alert(isPresented: $showAlert, content: {
                    getAlert(text: "This is the alert!")
                })
            }
        } // END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello!")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with a specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter, but it will not have a message.
    /// ```
    /// getAlert(text: "Hi!") ->  Alert(title: Text("Hi!"))
    /// ```
    /// - Warning: There is no additinal message in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

    // MARK: PREVIEW

#Preview {
    DocumentationTutorial()
}
