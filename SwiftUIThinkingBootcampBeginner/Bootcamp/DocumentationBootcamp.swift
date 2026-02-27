//
//  DocumentationBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 26/02/26.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: - PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: - BODY
    // Working copy - things to do:
    // 1) fix title
    // 2) fix alert
    // 3) fix something else
    
    // VICTOR - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView { // START: NAV
            ZStack {
                // BACKGROUND
                Color.red.ignoresSafeArea()
                
                // FOREGROUND
               foregroundLayer
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("Alert") {
                                            showAlert.toggle()
                                        }
                )
                .alert(isPresented: $showAlert) {
                    getAlert(text: "This is the alert!")
                }
            }
        } //END: NAV
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV
    }
    
    // MARK: - FUNCTIONS
    
    /// Gets an akert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: - PREVIEW
#Preview {
    DocumentationBootcamp()
}
