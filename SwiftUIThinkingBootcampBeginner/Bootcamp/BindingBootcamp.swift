//
//  BindingBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 14/12/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Text(title)
                    .foregroundStyle(.white)
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .blue
    @Binding var title: String
    
    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = .pink
            title = "New Title!!!"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

#Preview {
    BindingBootcamp()
}
