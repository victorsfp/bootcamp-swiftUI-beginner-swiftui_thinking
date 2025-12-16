//
//  AnimationBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 16/12/25.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
//                withAnimation(
//                    Animation.default
//                    .repeatForever(autoreverses: true)
//                ) {
//                    isAnimated.toggle()
//                } //AQUI DESTA FORMA TODOS OS COMPONENTES PELO O ESTADO VAI SOFRER ANIMACAO
                isAnimated.toggle()
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
                .animation(
                    .default
                    .repeatForever(autoreverses: true)) //DESSA FORMA, SOMENTE O COMPONENTE ESPECIFICADO COM ANIMATION VAI SOFRER A ANIMAÇÃO
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
