//
//  ButtonStylesBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 22/03/26.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .controlSize(.large)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(.borderedProminent)
            
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .controlSize(.mini)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
}
