//
//  BadgesBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 22/03/26.
//

import SwiftUI

// List
// Tabview

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge("NEW ITEMS")
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            
        }
        
        
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(2)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgesBootcamp()
}
