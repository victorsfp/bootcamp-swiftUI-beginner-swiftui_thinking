//
//  AppStorageBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 20/03/26.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            if let name = currentUserName {
                Text(name)
            }
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
        }
    }
}

#Preview {
    AppStorageBootcamp()
}
