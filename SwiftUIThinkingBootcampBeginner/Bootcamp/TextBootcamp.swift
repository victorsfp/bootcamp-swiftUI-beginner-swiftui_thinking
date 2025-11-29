//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 28/11/25.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the SwiftUI Thinking Bootcamp. I am really enjoying this course and learning alot.")
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline() //sublinhado
//            .underline(true, color: .red)
//            .italic() //italico
//            .strikethrough() //traçado
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
//            .baselineOffset(50.0) //espaçamento entre linhas
//            .kerning(10.0) // espaçamento entre letras
            .multilineTextAlignment(.leading) // alinhamento multilinhas
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1) //fator de escala minimo, para quando tem um frame e multiplas linha, colocamos um fator para ser redimensionda no frame, nesse caso como 10%.
    }
}

#Preview {
    TextBootcamp()
}
