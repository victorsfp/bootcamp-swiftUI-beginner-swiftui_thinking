//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 02/12/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
//            .renderingMode(.template) //Para alterar cor de uma image no caso PNG
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25.0)
//                Ellipse()
//                Circle()
//            )
    }
}

#Preview {
    ImageBootcamp()
}
