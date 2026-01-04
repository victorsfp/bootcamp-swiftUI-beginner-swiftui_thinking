//
//  NavigationViewBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 04/01/26.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                
                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(destination: {
                        MyOtherScreen()
                    }, label: {
                    Image(systemName: "gear")
                    })
                    .foregroundStyle(.red)
            )
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen!")
//                .navigationBarHidden(true)
            
            VStack{
                Button("BACK BUTTON") {
//                    presentationMode.wrappedValue.dismiss()
                    dismiss()
                }
                
                NavigationLink("Click here") {
                    Text("3rd screen!")
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
