//
//  AboutView.swift
//  ZodiacApp
//
import SwiftUI

import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            // Background gradient should cover the entire screen
            Theme.backgroundGradient
                .edgesIgnoringSafeArea(.all)

            // Content on top of the gradient
            VStack {
                Text("Developed by:")
                    .font(Theme.titleFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .padding()

                Text("Ran Park - ID A01331544")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Theme.secondaryTextColor)

                Text("Aric or - ID A01337169")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Theme.secondaryTextColor)
            }
            .padding()
        }
    }
}

#Preview {
    AboutView()
}
