//
//  OnboardingView.swift
//  Fructus
//
//  Created by Raka Permana on 31/08/24.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                 FruitCardView(fruit: fruit)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
