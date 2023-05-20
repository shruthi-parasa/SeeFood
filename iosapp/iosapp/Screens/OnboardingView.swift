//
//  OnboardingView.swift
//  iosapp
//
//  Created by Dheeksha Magesh on 5/20/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            Color("ColorTeal")
                .ignoresSafeArea(.all, edges: .all)
            
                VStack(spacing: 20) {
                    Text("Welcome!")
                        .font(.largeTitle)
                    
                    Button(action: {
                        isOnboardingViewActive = false
                        }) {
                        Text("hi")
                        }
                } //: VStack
            Image("logo")
                .resizable()
                .scaledToFit()
        } //: ZStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
