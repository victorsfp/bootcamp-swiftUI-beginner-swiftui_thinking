//
//  AnimationTimingBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 21/12/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimation: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimation.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(.spring())
                .animation(.spring(
                    response: 1.0,
                    dampingFraction: 0.7,
                    blendDuration: 1.0))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(.linear(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimation ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
