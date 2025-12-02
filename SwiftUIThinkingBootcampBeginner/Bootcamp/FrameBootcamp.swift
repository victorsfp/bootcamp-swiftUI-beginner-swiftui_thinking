//
//  FrameBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 02/12/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
        
        
        
        
//            .background(Color.green)
//            .frame(width: 300, height: 300, alignment: .leading) // ALTURA E LARGURA FIXA
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // AQUI PODEMOS SETAR MINIMO E MAXIMO, INCLUSIVE FAZER ALGO PARA OBTER O TAMANHO TOTAL DISPONIVEL
//            .background(Color.red)
    }
}

#Preview {
    FrameBootcamp()
}
