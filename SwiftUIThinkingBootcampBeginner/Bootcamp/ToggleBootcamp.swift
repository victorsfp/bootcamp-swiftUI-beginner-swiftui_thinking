//
//  ToggleBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 08/02/26.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: .purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
