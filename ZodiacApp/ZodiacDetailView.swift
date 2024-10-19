//
//  ZodiacDetailView.swift
//  ZodiacApp
//
import SwiftUI

struct ZodiacDetailView: View {
    var zodiac: Zodiac

    var body: some View {
        ZStack {
            // Apply the galaxy background gradient
            Theme.backgroundGradient
                .edgesIgnoringSafeArea(.all)

            VStack {
                Image(zodiac.imageName)
                    .resizable()
                    .frame(width: 170, height: 170)
                    .clipShape(Circle())
                    .padding()

                Text(zodiac.name)
                    .font(Theme.titleFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .padding(.top, 10)

                Text(zodiac.dateRange)
                    .font(Theme.subtitleFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .padding(.bottom, 10)

                Text(zodiac.description)
                    .font(Theme.bodyFont)
                    .foregroundColor(Theme.primaryTextColor)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
        .navigationBarTitle(zodiac.name, displayMode: .inline)
    }
}

#Preview {
    ZodiacDetailView(zodiac: zodiacData.first!)
}
