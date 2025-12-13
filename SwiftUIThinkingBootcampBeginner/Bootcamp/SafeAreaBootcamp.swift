//
//  SafeAreaBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 13/12/25.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(Color.blue)
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea(.all)
        )
        
        
        
//        ZStack {
//            // BACKGROUND
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            // FOREGROUND
//            
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(Color.red)
//        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
