//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 04/12/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill") //IMAGEM
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle() //CIRCLE PARA BACK GROUND
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10, x: 0.0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle() //CIRCLE DE NOTIFICACOS COMO OVERLAY
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 0.5)), radius: 10, x: 5, y: 5)
                    })
                
            )
        
        
        
//        Rectangle() //RETANGULO PRETO
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .topLeading) {
//                Rectangle() //RETANGULO AZUL POR CIMA
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//            }
//            .background(alignment: .center) {
//                Rectangle() //RETANGULO VERMELHO COMO BACKGROUND
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//            }
        
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay {
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            }
//            .background(
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 110, height: 110)
//            )
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120, alignment: .center)
//            ) //Posso ter multiplos background com frames diferentes e view e formas diferentes
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
