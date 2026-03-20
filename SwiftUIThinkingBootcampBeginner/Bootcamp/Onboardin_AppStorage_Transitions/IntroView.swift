//
//  IntroView.swift
//  SwiftUIThinkingBootcampBeginner
//
//  Created by Victor dos Santos Feitosa on 20/03/26.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // BACKGROUND
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7815532088, green: 0.5244659781, blue: 0.9127232432, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
            // IF USER IS SIGNED IN
            // PROFILE VIEW
            // ELSE
            // ONBOARDIN VIEW
        }
    }
}

#Preview {
    IntroView()
}
