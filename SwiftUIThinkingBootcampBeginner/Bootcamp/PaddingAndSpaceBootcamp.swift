//
//  PaddingAndSpaceBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 04/12/25.
//

import SwiftUI

struct PaddingAndSpaceBootcamp: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.30),
                    radius: 10,
                    x: 0.0, y: 10.0)
        )
        .padding(.horizontal, 10)
        
//        VStack(alignment: .leading) {
//            Text("Hello, World!")
//                .font(.largeTitle)
//                .fontWeight(.semibold)
//            
//            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
//        }
//        .background(Color.blue)
//        .padding()
//        .background(Color.red)
//        .padding(.horizontal, 10)
//        .background(Color.green)
        
//        Text("Hello, World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
////            .background(Color.red)
//            .padding(.leading, 20)
        
        
        
//        Text("Hello, World!")
//            .background(Color.yellow)
//            //.padding()
//            .padding(.all, 10)
//            .padding(.leading, 20) //ELE SOMA 20 COM 10 DO PADDING ANTERIOR
//            .background(Color.blue)
    }
}

#Preview {
    PaddingAndSpaceBootcamp()
}
