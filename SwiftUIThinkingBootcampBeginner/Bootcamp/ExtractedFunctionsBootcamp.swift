//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 13/12/25.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            // Background
            backgroundColor.ignoresSafeArea(.all)
            
            // Content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
