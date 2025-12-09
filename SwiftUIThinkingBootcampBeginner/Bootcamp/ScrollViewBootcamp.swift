//
//  ScrollViewBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 07/12/25.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
            LazyVStack { //VSTACK ELE CARREGA ASSIM QUE A TELA É EXIBIDA, O LAZY V STACK ELE CARREGA CONFORME É VISÍVEL EM TELA CONFORME ROLAMOS
                ForEach(1..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
        
        
//        ScrollView(.horizontal,showsIndicators: false) {
//            HStack {
//                ForEach(1..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
