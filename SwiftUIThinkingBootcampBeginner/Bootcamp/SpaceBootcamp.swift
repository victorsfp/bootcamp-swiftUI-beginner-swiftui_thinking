//
//  SpaceBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 06/12/25.
//

import SwiftUI

struct SpaceBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer()
//                .frame(width: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(Color.yellow)
        
//        HStack(spacing: 0) {
//            Spacer(minLength: 0) //MINIMO GERALMENTE É 8 OU 10, ENTÃO CASO QUEIRA QUE NÃO APRESENTE EM UM CENÁRIO ONDE ELE ESTA BEM ENCURTADO, DEVEMOS CETAR COMO 0
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .frame(width: 50, height: 50)
//                
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .background(Color.yellow)
////        .padding(.horizontal, 200)
//        .background(Color.blue)
    }
}

#Preview {
    SpaceBootcamp()
}
