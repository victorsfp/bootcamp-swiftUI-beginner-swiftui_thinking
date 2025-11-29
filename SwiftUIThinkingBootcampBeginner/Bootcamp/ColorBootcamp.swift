//
//  ColorBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 29/11/25.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 1, green: 0.2527923882, blue: 1, alpha: 1)) //Literal Color not working
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10) //SOMBRA EM TODO O RETANGULO
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
            
    }
}

#Preview {
    ColorBootcamp()
}
