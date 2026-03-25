//
//  FocusStateBootcamp.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 24/03/26.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case username
        case password
    }
    
//    @FocusState private var usernameInFocus: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocus: Bool
    @State private var password: String = ""
    
    @FocusState private var fieldInfocus: OnboardingFields?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
                .focused($fieldInfocus, equals: .username)
//                .focused($usernameInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
                .focused($fieldInfocus, equals: .password)
//                .focused($passwordInFocus)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("SIGN UP 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if usernameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if usernameIsValid{
                    fieldInfocus = .password
//                    usernameInFocus = false
//                    passwordInFocus = true
                } else {
                    fieldInfocus = .username
//                    usernameInFocus = true
//                    passwordInFocus = false
                }
            }
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernameInFocus.toggle()
//            }
//        }
    }
}

#Preview {
    FocusStateBootcamp()
}
