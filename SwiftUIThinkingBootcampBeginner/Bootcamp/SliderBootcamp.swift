//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 20/02/26.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValude: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating: ")
            Text(
                String(format: "%.1f", sliderValude)
                //"\(sliderValude)"
            )
            .foregroundStyle(color)
            //Slider(value: $sliderValude)
            //Slider(value: $sliderValude, in: 1...5)
//            Slider(value: $sliderValude, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValude,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { _ in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
