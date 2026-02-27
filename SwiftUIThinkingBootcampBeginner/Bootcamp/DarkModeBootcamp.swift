//
//  DarkModeBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 26/02/26.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(.black)
                    Text("This color is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.light)
}

#Preview {
    DarkModeBootcamp()
        .preferredColorScheme(.dark)
}
